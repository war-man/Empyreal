#pragma checksum "C:\Users\Admin\Desktop\EmpyrealV2\Empyreal\Views\Dashboard\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "7fdce116a7ec58a4f189b3b618aa5c9d4b2546c9"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Dashboard_Index), @"mvc.1.0.view", @"/Views/Dashboard/Index.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Dashboard/Index.cshtml", typeof(AspNetCore.Views_Dashboard_Index))]
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
#line 1 "C:\Users\Admin\Desktop\EmpyrealV2\Empyreal\Views\_ViewImports.cshtml"
using Empyreal;

#line default
#line hidden
#line 2 "C:\Users\Admin\Desktop\EmpyrealV2\Empyreal\Views\_ViewImports.cshtml"
using Empyreal.Models;

#line default
#line hidden
#line 3 "C:\Users\Admin\Desktop\EmpyrealV2\Empyreal\Views\_ViewImports.cshtml"
using Empyreal.ViewModels;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"7fdce116a7ec58a4f189b3b618aa5c9d4b2546c9", @"/Views/Dashboard/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"524330925d5bef7a58776afac88f5862ab279611", @"/Views/_ViewImports.cshtml")]
    public class Views_Dashboard_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Dashboard", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Index", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("type", new global::Microsoft.AspNetCore.Html.HtmlString("text/javascript"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/js/Plugins/morris/raphael-min.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_4 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/js/Plugins/morris/morris.min.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_5 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/js/Plugins/moment.min.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_6 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/js/Plugins/daterangepicker/daterangepicker.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_7 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/js/Chart.min.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_8 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/js/Dashboard/demo_dashboard.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#line 1 "C:\Users\Admin\Desktop\EmpyrealV2\Empyreal\Views\Dashboard\Index.cshtml"
  
    ViewData["Title"] = "Empyreal - Admin";
    Layout = "_ManageLayout";

#line default
#line hidden
            BeginContext(83, 62, true);
            WriteLiteral("\r\n<!-- START BREADCRUMB -->\r\n<ul class=\"breadcrumb\">\r\n    <li>");
            EndContext();
            BeginContext(145, 58, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "7fdce116a7ec58a4f189b3b618aa5c9d4b2546c96902", async() => {
                BeginContext(194, 5, true);
                WriteLiteral("Admin");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(203, 8842, true);
            WriteLiteral(@"</li>
    <li class=""active"">Tổng quan</li>
</ul>
<!-- END BREADCRUMB -->
<!-- PAGE CONTENT WRAPPER -->
<div class=""page-content-wrap"">

    <!-- START WIDGETS -->
    <div class=""row"">
        <div class=""col-md-3"">

            <!-- START WIDGET MESSAGES -->
            <div class=""widget widget-default widget-item-icon"" onclick=""location.href='pages-messages.html';"">
                <div class=""widget-item-left"">
                    <span class=""fas fa-wallet color-blue"">
                    </span>
                </div>
                <div class=""widget-data"">
                    <div class=""widget-int num-count"" id=""stats-revenue"">48</div>
                    <div class=""widget-title"">Doanh thu</div>
                    <div class=""widget-subtitle"">Hôm nay</div>
                </div>
                <div class=""widget-controls"">
                    <a href=""#"" class=""widget-control-right widget-remove"" data-toggle=""tooltip"" data-placement=""top"" title=""Remove Widget""><span class=");
            WriteLiteral(@"""fa fa-times""></span></a>
                </div>
            </div>
            <!-- END WIDGET MESSAGES -->

        </div>
        <div class=""col-md-3"">

            <!-- START WIDGET MESSAGES -->
            <div class=""widget widget-default widget-item-icon"" onclick=""location.href='pages-messages.html';"">
                <div class=""widget-item-left"">
                    <span class=""fas fa-cart-arrow-down color-yellow""></span>
                </div>
                <div class=""widget-data"">
                    <div class=""widget-int num-count"" id=""stats-orders"">48</div>
                    <div class=""widget-title"">Đơn đặt hàng</div>
                    <div class=""widget-subtitle"">Trong ngày</div>
                </div>
                <div class=""widget-controls"">
                    <a href=""#"" class=""widget-control-right widget-remove"" data-toggle=""tooltip"" data-placement=""top"" title=""Remove Widget""><span class=""fa fa-times""></span></a>
                </div>
            </div>");
            WriteLiteral(@"
            <!-- END WIDGET MESSAGES -->

        </div>
        <div class=""col-md-3"">

            <!-- START WIDGET REGISTRED -->
            <div class=""widget widget-default widget-item-icon"" onclick=""location.href='pages-address-book.html';"">
                <div class=""widget-item-left"">
                    <span class=""fas fa-user color-pink""></span>
                </div>
                <div class=""widget-data"">
                    <div class=""widget-int num-count"" id=""stats-newuser"">375</div>
                    <div class=""widget-title"">Khách hàng mới</div>
                    <div class=""widget-subtitle"">Hôm nay</div>
                </div>
                <div class=""widget-controls"">
                    <a href=""#"" class=""widget-control-right widget-remove"" data-toggle=""tooltip"" data-placement=""top"" title=""Remove Widget""><span class=""fa fa-times""></span></a>
                </div>
            </div>
            <!-- END WIDGET REGISTRED -->

        </div>
        <div cl");
            WriteLiteral(@"ass=""col-md-3"">

            <!-- START WIDGET CLOCK -->
            <div class=""widget widget-info widget-padding-sm"">
                <div class=""widget-big-int plugin-clock"">00:00</div>
                <div class=""widget-subtitle plugin-date"">Loading...</div>
                <div class=""widget-controls"">
                    <a href=""#"" class=""widget-control-right widget-remove"" data-toggle=""tooltip"" data-placement=""left"" title=""Remove Widget""><span class=""fa fa-times""></span></a>
                </div>
                <div class=""widget-buttons widget-c3"">
                    <div class=""col"">
                        <a href=""#""><span class=""far fa-clock""></span></a>
                    </div>
                    <div class=""col"">
                        <a href=""#""><span class=""far fa-bell""></span></a>
                    </div>
                    <div class=""col"">
                        <a href=""#""><span class=""far fa-calendar-alt""></span></a>
                    </div>
             ");
            WriteLiteral(@"   </div>
            </div>
            <!-- END WIDGET CLOCK -->

        </div>
    </div>
    <!-- END WIDGETS -->

    <div class=""row"">
        <div class=""col-md-6"">

            <!-- START USERS ACTIVITY BLOCK -->
            <div class=""panel panel-default"">
                <div class=""panel-heading"">
                    <div class=""panel-title-box"">
                        <h3>Đơn đặt hàng</h3>
                        <span>Hàng tháng</span>
                    </div>
                    <ul class=""panel-controls"" style=""margin-top: 2px;"">
                        <li><a href=""#"" class=""panel-fullscreen""><span class=""fas fa-expand""></span></a></li>
                        <li><a href=""#"" class=""panel-refresh""><span class=""fas fa-sync-alt""></span></a></li>
                        <li class=""dropdown"">
                            <a href=""#"" class=""dropdown-toggle"" data-toggle=""dropdown""><span class=""fas fa-cog""></span></a>
                            <ul class=""dropdown-menu"">
");
            WriteLiteral(@"                                <li><a href=""#"" class=""panel-collapse""><span class=""fas fa-angle-up""></span> Collapse</a></li>
                                <li><a href=""#"" class=""panel-remove""><span class=""fas fa-times""></span> Remove</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class=""panel-body padding-0"" id=""chart-parent2"">
                    
                </div>
            </div>
            <!-- END USERS ACTIVITY BLOCK -->

        </div>
        <div class=""col-md-6"">

            <!-- START VISITORS BLOCK -->
            <div class=""panel panel-default"">
                <div class=""panel-heading"">
                    <div class=""panel-title-box"">
                        <h3>Doanh thu</h3>
                        <span>Hàng tháng</span>
                    </div>
                    <ul class=""panel-controls"" style=""margin-top: 2px;"">
                        <li><a href=""#"" c");
            WriteLiteral(@"lass=""panel-fullscreen""><span class=""fas fa-expand""></span></a></li>
                        <li><a href=""#"" class=""panel-refresh""><span class=""fas fa-sync-alt""></span></a></li>
                        <li class=""dropdown"">
                            <a href=""#"" class=""dropdown-toggle"" data-toggle=""dropdown""><span class=""fas fa-cog""></span></a>
                            <ul class=""dropdown-menu"">
                                <li><a href=""#"" class=""panel-collapse""><span class=""fas fa-angle-up""></span> Collapse</a></li>
                                <li><a href=""#"" class=""panel-remove""><span class=""fas fa-times""></span> Remove</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class=""panel-body padding-0"" id=""chart-parent1"">
                    
                </div>
            </div>
            <!-- END VISITORS BLOCK -->

        </div>
        
    </div>

    <div class=""row"">
       ");
            WriteLiteral(@" <div class=""col-md-12"">

            <!-- START VISITORS BLOCK -->
            <div class=""panel panel-default"">
                <div class=""panel-heading"">
                    <div class=""panel-title-box"">
                        <h3>Sản phẩm bán chạy</h3>
                        <span>Trong ngày</span>
                    </div>
                    <ul class=""panel-controls"" style=""margin-top: 2px;"">
                        <li><a href=""#"" class=""panel-fullscreen""><span class=""fas fa-expand""></span></a></li>
                        <li><a href=""#"" class=""panel-refresh""><span class=""fas fa-sync-alt""></span></a></li>
                        <li class=""dropdown"">
                            <a href=""#"" class=""dropdown-toggle"" data-toggle=""dropdown""><span class=""fas fa-cog""></span></a>
                            <ul class=""dropdown-menu"">
                                <li><a href=""#"" class=""panel-collapse""><span class=""fas fa-angle-up""></span> Collapse</a></li>
                              ");
            WriteLiteral(@"  <li><a href=""#"" class=""panel-remove""><span class=""fas fa-times""></span> Remove</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class=""panel-body padding-0"" id=""chart-parent3"">

                </div>
            </div>
            <!-- END VISITORS BLOCK -->

        </div>
    </div>


    <!-- START DASHBOARD CHART -->
    <div class=""chart-holder"" id=""dashboard-area-1"" style=""height: 200px;""></div>
    <div class=""block-full-width"">

    </div>
    <!-- END DASHBOARD CHART -->

</div>
<!-- END PAGE CONTENT WRAPPER -->

");
            EndContext();
            DefineSection("Scripts", async() => {
                BeginContext(9063, 38, true);
                WriteLiteral("\r\n    <!-- THIS PAGE PLUGINS -->\r\n    ");
                EndContext();
                BeginContext(9101, 81, false);
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "7fdce116a7ec58a4f189b3b618aa5c9d4b2546c918107", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_3);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                EndContext();
                BeginContext(9182, 6, true);
                WriteLiteral("\r\n    ");
                EndContext();
                BeginContext(9188, 80, false);
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "7fdce116a7ec58a4f189b3b618aa5c9d4b2546c919450", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_4);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                EndContext();
                BeginContext(9268, 6, true);
                WriteLiteral("\r\n    ");
                EndContext();
                BeginContext(9274, 73, false);
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "7fdce116a7ec58a4f189b3b618aa5c9d4b2546c920793", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_5);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                EndContext();
                BeginContext(9347, 6, true);
                WriteLiteral("\r\n    ");
                EndContext();
                BeginContext(9353, 94, false);
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "7fdce116a7ec58a4f189b3b618aa5c9d4b2546c922136", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_6);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                EndContext();
                BeginContext(9447, 66, true);
                WriteLiteral("\r\n    <!-- END PAGE PLUGINS -->\r\n    <!-- START TEMPLATE -->\r\n    ");
                EndContext();
                BeginContext(9513, 64, false);
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "7fdce116a7ec58a4f189b3b618aa5c9d4b2546c923544", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_7);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                EndContext();
                BeginContext(9577, 6, true);
                WriteLiteral("\r\n    ");
                EndContext();
                BeginContext(9583, 79, false);
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "7fdce116a7ec58a4f189b3b618aa5c9d4b2546c924887", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_8);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                EndContext();
                BeginContext(9662, 29, true);
                WriteLiteral("\r\n    <!-- END TEMPLATE -->\r\n");
                EndContext();
            }
            );
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
