#pragma checksum "D:\BoJiJi\KLTN\Project\EmpyrealV2\Empyreal\Views\Shared\Product\_ProductTop.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "715b4ab7ab9fcd05a899cb6ce2e3fb86a094e412"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Shared_Product__ProductTop), @"mvc.1.0.view", @"/Views/Shared/Product/_ProductTop.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Shared/Product/_ProductTop.cshtml", typeof(AspNetCore.Views_Shared_Product__ProductTop))]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#line 1 "D:\BoJiJi\KLTN\Project\EmpyrealV2\Empyreal\Views\_ViewImports.cshtml"
using Empyreal;

#line default
#line hidden
#line 2 "D:\BoJiJi\KLTN\Project\EmpyrealV2\Empyreal\Views\_ViewImports.cshtml"
using Empyreal.Models;

#line default
#line hidden
#line 3 "D:\BoJiJi\KLTN\Project\EmpyrealV2\Empyreal\Views\_ViewImports.cshtml"
using Empyreal.ViewModels;

#line default
#line hidden
#line 1 "D:\BoJiJi\KLTN\Project\EmpyrealV2\Empyreal\Views\Shared\Product\_ProductTop.cshtml"
using Empyreal.ViewModels.Display;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"715b4ab7ab9fcd05a899cb6ce2e3fb86a094e412", @"/Views/Shared/Product/_ProductTop.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"524330925d5bef7a58776afac88f5862ab279611", @"/Views/_ViewImports.cshtml")]
    public class Views_Shared_Product__ProductTop : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IEnumerable<ProductBasicViewModel>>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("banner banner-1"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Home", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Products", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("title", new global::Microsoft.AspNetCore.Html.HtmlString(""), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            BeginContext(37, 2, true);
            WriteLiteral("\r\n");
            EndContext();
            BeginContext(82, 4, true);
            WriteLiteral("\r\n\r\n");
            EndContext();
#line 6 "D:\BoJiJi\KLTN\Project\EmpyrealV2\Empyreal\Views\Shared\Product\_ProductTop.cshtml"
 foreach (var product in Model)
{

#line default
#line hidden
            BeginContext(122, 45, true);
            WriteLiteral("    <div class=\"col-md-2 col-sm-6\">\r\n        ");
            EndContext();
            BeginContext(167, 371, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "715b4ab7ab9fcd05a899cb6ce2e3fb86a094e4125287", async() => {
                BeginContext(274, 18, true);
                WriteLiteral("\r\n            <img");
                EndContext();
                BeginWriteAttribute("src", " src=\"", 292, "\"", 320, 1);
#line 10 "D:\BoJiJi\KLTN\Project\EmpyrealV2\Empyreal\Views\Shared\Product\_ProductTop.cshtml"
WriteAttributeValue("", 298, product.Images[0].Url, 298, 22, false);

#line default
#line hidden
                EndWriteAttribute();
                BeginContext(321, 92, true);
                WriteLiteral(" alt=\"\">\r\n            <div class=\"banner-popular\">\r\n                <h5 class=\"white-color\">");
                EndContext();
                BeginContext(414, 12, false);
#line 12 "D:\BoJiJi\KLTN\Project\EmpyrealV2\Empyreal\Views\Shared\Product\_ProductTop.cshtml"
                                   Write(product.Name);

#line default
#line hidden
                EndContext();
                BeginContext(426, 46, true);
                WriteLiteral("</h5>\r\n                <p class=\"white-color\">");
                EndContext();
                BeginContext(473, 24, false);
#line 13 "D:\BoJiJi\KLTN\Project\EmpyrealV2\Empyreal\Views\Shared\Product\_ProductTop.cshtml"
                                  Write(product.PriceProductText);

#line default
#line hidden
                EndContext();
                BeginContext(497, 37, true);
                WriteLiteral(" </p>\r\n\r\n            </div>\r\n        ");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_2.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#line 9 "D:\BoJiJi\KLTN\Project\EmpyrealV2\Empyreal\Views\Shared\Product\_ProductTop.cshtml"
                                                                                 WriteLiteral(product.Id);

#line default
#line hidden
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_3);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(538, 14, true);
            WriteLiteral("\r\n    </div>\r\n");
            EndContext();
#line 18 "D:\BoJiJi\KLTN\Project\EmpyrealV2\Empyreal\Views\Shared\Product\_ProductTop.cshtml"
}

#line default
#line hidden
            BeginContext(555, 2, true);
            WriteLiteral("\r\n");
            EndContext();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IEnumerable<ProductBasicViewModel>> Html { get; private set; }
    }
}
#pragma warning restore 1591
