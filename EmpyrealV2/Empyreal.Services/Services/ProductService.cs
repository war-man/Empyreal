﻿using Empyreal.Interfaces.Entities;
using Empyreal.Interfaces.Services;
using Empyreal.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Transactions;

namespace Empyreal.Services.Services
{
    public class ProductService : IProductService
    {
        private readonly IUnitOfWork _unitOfWork;
        public ProductService()
        {
            _unitOfWork = ServiceLocators.ServiceLocator.Current.GetInstance<IUnitOfWork>();
        }

        public void RollBack()
        {
            _unitOfWork.Rollback();
        }

        public List<Product> SearchFullText(string text, int catalogID, int state)
        {
            if (String.IsNullOrEmpty(text))
            {
                text = " "; // replace = space để tránh lỗi. Empty là lỗi
            }
            if (catalogID == 0)
            { // chỉ tìm theo text & state
                return _unitOfWork.ProductRepository
                    .Search(text.ToLower())
                    .Where(p => p.State == state)
                    .ToList();
            }
            // tìm theo text & catalog & state
            return _unitOfWork.ProductRepository
                .Search(text.ToLower())
                .Where(p => p.CatalogId == catalogID && p.State == state)
                .ToList();
        }

        /// <summary>
        /// Lấy 1 sản phẩm
        /// </summary>
        /// <param name="ProductID">Mã sản phẩm</param>
        /// <returns>Product</returns>
        public Product Get(int id)
        {
            return _unitOfWork.ProductRepository
                .Get(p => p.Id == id && p.State == 1);
        }

        /// <summary>
        /// Lấy nhiều sản phẩm
        /// </summary>
        /// <param name="ProductID">Mã sản phẩm</param>
        /// <returns></returns>
        public List<Product> GetList(Func<Product, object> TProduct, int Top)
        {
            return _unitOfWork.ProductRepository.Where(p => p.State == 1)
                .OrderBy(TProduct)
                .Take(Top)
                .ToList();
        }

        /// <summary>
        /// Lấy nhiều sản phẩm
        /// </summary>
        /// <param name="ProductID">Mã sản phẩm</param>
        /// <returns></returns>
        public IEnumerable<Product> GetAvailable()
        {
            return _unitOfWork.ProductRepository.Where(p => p.State == 1);
        }


        /// <summary>
        /// Chỉnh sửa sản phẩm
        /// </summary>
        /// <param name="product">Update Product Entity</param>
        /// <param name="productDetails">Update ProductDetail Entity</param>
        /// <param name="images">Update Image Entity</param>
        /// <param name="noUpdateDetail">Create New ProductDetail Entity</param>
        /// <returns>
        /// return the number of rows affected
        /// 0 = Error
        /// </returns>
        public int Update(Product product, History history)
        {
            try
            {
                int isReturn = 0;
                _unitOfWork.ProductRepository.Update(product);
                _unitOfWork.ProductRepository.Save(); // Save entity to GetID

                foreach (var item in product.ProductDetails)
                {
                    int detailID = item.Id;
                    ProductPrice priceNav = item.PriceNavigation;
                    priceNav.ProductDetailId = detailID;
                    _unitOfWork.ProductPriceRepository.Update(priceNav);

                    // Commit transaction
                }
                
                isReturn = _unitOfWork.Commit();

                if (isReturn != 0)
                {
                    history.Detail = product.Id;
                    _unitOfWork.HistoryRepository.Update(history);
                    isReturn = _unitOfWork.Commit();
                }

                return isReturn;
            }
            catch (Exception)
            {
                _unitOfWork.Rollback();
                return 0; // => Lỗi
            }
        }
    }
}
