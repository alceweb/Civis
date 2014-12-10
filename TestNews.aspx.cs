using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TestNews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CKEditor1.config.toolbar = new object[]
            {
                new object[] { "Source", "-", "Save", "NewPage", "Preview", "-", "Templates" },
                            new object[] { "Cut", "Copy", "Paste", "PasteText", "PasteFromWord", "-", "Print", "SpellChecker", "Scayt" },
                            new object[] { "Undo", "Redo", "-", "Find", "Replace", "-", "SelectAll", "RemoveFormat" },
                            new object[] { "Form", "Checkbox", "Radio", "TextField", "Textarea", "Select", "Button", "ImageButton", "HiddenField" },
                            "/",
                            new object[] { "Bold", "Italic", "Underline", "Strike", "-", "Subscript", "Superscript" },
                            new object[] { "NumberedList", "BulletedList", "-", "Outdent", "Indent", "Blockquote", "CreateDiv" },
                            new object[] { "JustifyLeft", "JustifyCenter", "JustifyRight", "JustifyBlock" },
                            new object[] { "BidiLtr", "BidiRtl" },
                            new object[] { "Link", "Unlink", "Anchor" },
                            new object[] { "Image", "Flash", "Table", "HorizontalRule", "Smiley", "SpecialChar", "PageBreak", "Iframe" },
                            "/",
                            new object[] { "Styles", "Format", "Font", "FontSize" },
                            new object[] { "TextColor", "BGColor" },
                            new object[] { "Maximize", "ShowBlocks", "-", "About" }
            };
    }
}