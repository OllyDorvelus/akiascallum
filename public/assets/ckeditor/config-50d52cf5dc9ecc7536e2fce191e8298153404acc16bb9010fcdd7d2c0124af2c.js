CKEDITOR.editorConfig=function(e){e.filebrowserBrowseUrl="/ckeditor/attachment_files",e.filebrowserFlashBrowseUrl="/ckeditor/attachment_files",e.filebrowserFlashUploadUrl="/ckeditor/attachment_files",e.filebrowserImageBrowseLinkUrl="/ckeditor/pictures",e.filebrowserImageBrowseUrl="/ckeditor/pictures",e.filebrowserImageUploadUrl="/ckeditor/pictures",e.filebrowserUploadUrl="/ckeditor/attachment_files",e.allowedContent=!0,e.filebrowserParams=function(){for(var e,t,i,r=document.getElementsByTagName("meta"),o=new Object,n=0;n<r.length;n++)switch((i=r[n]).name){case"csrf-token":e=i.content;break;case"csrf-param":t=i.content;break;default:continue}return t!==undefined&&e!==undefined&&(o[t]=e),o},e.addQueryString=function(e,t){var i=[];if(!t)return e;for(var r in t)i.push(r+"="+encodeURIComponent(t[r]));return e+(-1!=e.indexOf("?")?"&":"?")+i.join("&")},CKEDITOR.on("dialogDefinition",function(t){var i,r,o=t.data.name,n=t.data.definition;CKEDITOR.tools.indexOf(["link","image","attachment","flash"],o)>-1&&(r=null==(i=n.getContents("Upload")||n.getContents("upload"))?null:i.get("upload"))&&r.filebrowser&&r.filebrowser.params===undefined&&(r.filebrowser.params=e.filebrowserParams(),r.action=e.addQueryString(r.action,r.filebrowser.params))}),e.toolbar=[{name:"document",groups:["mode","document","doctools"],items:["Source"]},{name:"clipboard",groups:["clipboard","undo"],items:["Cut","Copy","Paste","PasteText","PasteFromWord","-","Undo","Redo"]},{name:"links",items:["Link","Unlink","Anchor"]},{name:"insert",items:["Image","Flash","Table","HorizontalRule","SpecialChar"]},{name:"paragraph",groups:["list","indent","blocks","align","bidi"],items:["NumberedList","BulletedList","-","Outdent","Indent","-","Blockquote","CreateDiv","-","JustifyLeft","JustifyCenter","JustifyRight","JustifyBlock"]},"/",{name:"styles",items:["Styles","Format","Font","FontSize"]},{name:"colors",items:["TextColor","BGColor"]},{name:"basicstyles",groups:["basicstyles","cleanup"],items:["Bold","Italic","Underline","Strike","Subscript","Superscript","-","RemoveFormat"]}],e.toolbar_mini=[{name:"paragraph",groups:["list","indent","blocks","align","bidi"],items:["NumberedList","BulletedList","-","Outdent","Indent","-","Blockquote","CreateDiv","-","JustifyLeft","JustifyCenter","JustifyRight","JustifyBlock"]},{name:"styles",items:["Font","FontSize"]},{name:"colors",items:["TextColor","BGColor"]},{name:"basicstyles",groups:["basicstyles","cleanup"],items:["Bold","Italic","Underline","Strike","Subscript","Superscript","-","RemoveFormat"]},{name:"insert",items:["Image","Table","HorizontalRule","SpecialChar"]}]};