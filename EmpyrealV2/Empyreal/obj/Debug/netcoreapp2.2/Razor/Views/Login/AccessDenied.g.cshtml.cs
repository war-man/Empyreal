#pragma checksum "D:\BoJiJi\KLTN\Project\EmpyrealV2\Empyreal\Views\Login\AccessDenied.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "bb2aeedd75116daa92f7bc8c48d63cf2adca717d"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Login_AccessDenied), @"mvc.1.0.view", @"/Views/Login/AccessDenied.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Login/AccessDenied.cshtml", typeof(AspNetCore.Views_Login_AccessDenied))]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"bb2aeedd75116daa92f7bc8c48d63cf2adca717d", @"/Views/Login/AccessDenied.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"524330925d5bef7a58776afac88f5862ab279611", @"/Views/_ViewImports.cshtml")]
    public class Views_Login_AccessDenied : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
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
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.HeadTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper;
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.BodyTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#line 1 "D:\BoJiJi\KLTN\Project\EmpyrealV2\Empyreal\Views\Login\AccessDenied.cshtml"
  
    ViewData["Title"] = "Từ chối truy cập";
    Layout = "null";

#line default
#line hidden
            BeginContext(74, 2, true);
            WriteLiteral("\r\n");
            EndContext();
            BeginContext(76, 563, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("head", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "bb2aeedd75116daa92f7bc8c48d63cf2adca717d3661", async() => {
                BeginContext(82, 550, true);
                WriteLiteral(@"
    <!-- META SECTION -->
    <title>Joli Admin - Responsive Bootstrap Admin Template</title>
    <meta http-equiv=""Content-Type"" content=""text/html; charset=utf-8"" />
    <meta http-equiv=""X-UA-Compatible"" content=""IE=edge"" />
    <meta name=""viewport"" content=""width=device-width, initial-scale=1"" />

    <link rel=""icon"" href=""favicon.ico"" type=""image/x-icon"" />
    <!-- END META SECTION -->
    <!-- CSS INCLUDE -->
    <link rel=""stylesheet"" type=""text/css"" id=""theme"" href=""css/theme-default.css"" />
    <!-- EOF CSS INCLUDE -->
");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.HeadTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(639, 2, true);
            WriteLiteral("\r\n");
            EndContext();
            BeginContext(641, 1308, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("body", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "bb2aeedd75116daa92f7bc8c48d63cf2adca717d5417", async() => {
                BeginContext(647, 713, true);
                WriteLiteral(@"
    <div class=""error-container"">
        <div class=""error-code"">403</div>
        <div class=""error-text"">Forbidden</div>
        <div class=""error-subtext"">Bạn không có quyền truy cập vào trang này!</div>
        <div class=""error-actions"">
            <div class=""row"">
                <div class=""col-md-6"">
                    <button class=""btn btn-info btn-block btn-lg"" onClick=""document.location.href = '/Home/Index';"">Trở về trang chủ</button>
                </div>
                <div class=""col-md-6"">
                    <button class=""btn btn-primary btn-block btn-lg"" onClick=""history.back();"">Trở về trang trước</button>
                </div>
            </div>
        </div>
");
                EndContext();
                BeginContext(1930, 12, true);
                WriteLiteral("    </div>\r\n");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.BodyTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
