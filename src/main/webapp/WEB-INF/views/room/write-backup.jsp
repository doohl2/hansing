<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="${ctx}/resources/css/styl.css">
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.css"
	rel="stylesheet">
<!-- <script	src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.js"></script> -->
<%-- <script src="${ctx}/resources/js/summernote-ko-KR.js"></script> --%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<style>input[type=radio]{width:25px;}.note-editable{font-size:18px;}.dropdown-item{font-size:15px;}.note-editable kbd,.note-frame *{-webkit-box-sizing:border-box;-moz-box-sizing:border-box}.note-btn,.note-btn.active,.note-btn:active{background-image:none;outline:0}.note-editor.note-frame .note-editing-area,.note-modal{overflow:hidden}@font-face{font-family:summernote;font-weight:400;font-style:normal;src:url(./font/summernote.eot?e557617934c52ea068954af79ed7c221),url(./font/summernote.eot?#iefix) format('embedded-opentype'),url(./font/summernote.woff?e557617934c52ea068954af79ed7c221) format('woff'),url(./font/summernote.ttf?e557617934c52ea068954af79ed7c221) format('truetype')}[class*=' note-icon-']:before,[class^=note-icon-]:before{font:normal normal normal 14px summernote;font-size:inherit;display:inline-block;vertical-align:middle;text-decoration:inherit;text-transform:none;-webkit-font-smoothing:antialiased;text-rendering:auto;speak:none;-moz-osx-font-smoothing:grayscale}.note-icon-align-center:before,.note-icon-align-indent:before,.note-icon-align-justify:before,.note-icon-align-left:before,.note-icon-align-outdent:before,.note-icon-align-right:before,.note-icon-align:before,.note-icon-arrow-circle-down:before,.note-icon-arrow-circle-left:before,.note-icon-arrow-circle-right:before,.note-icon-arrow-circle-up:before,.note-icon-arrows-alt:before,.note-icon-arrows-h:before,.note-icon-arrows-v:before,.note-icon-bold:before,.note-icon-caret:before,.note-icon-chain-broken:before,.note-icon-circle:before,.note-icon-close:before,.note-icon-code:before,.note-icon-col-after:before,.note-icon-col-before:before,.note-icon-col-remove:before,.note-icon-eraser:before,.note-icon-font:before,.note-icon-frame:before,.note-icon-italic:before,.note-icon-link:before,.note-icon-magic:before,.note-icon-menu-check:before,.note-icon-minus:before,.note-icon-orderedlist:before,.note-icon-pencil:before,.note-icon-picture:before,.note-icon-question:before,.note-icon-redo:before,.note-icon-row-above:before,.note-icon-row-below:before,.note-icon-row-remove:before,.note-icon-special-character:before,.note-icon-square:before,.note-icon-strikethrough:before,.note-icon-subscript:before,.note-icon-summernote:before,.note-icon-superscript:before,.note-icon-table:before,.note-icon-text-height:before,.note-icon-trash:before,.note-icon-underline:before,.note-icon-undo:before,.note-icon-unorderedlist:before,.note-icon-video:before{font-family:summernote;font-weight:400;font-style:normal;display:inline-block;text-decoration:inherit}.note-icon-align-center:before{content:'\f101'}.note-icon-align-indent:before{content:'\f102'}.note-icon-align-justify:before{content:'\f103'}.note-icon-align-left:before{content:'\f104'}.note-icon-align-outdent:before{content:'\f105'}.note-icon-align-right:before{content:'\f106'}.note-icon-align:before{content:'\f107'}.note-icon-arrow-circle-down:before{content:'\f108'}.note-icon-arrow-circle-left:before{content:'\f109'}.note-icon-arrow-circle-right:before{content:'\f10a'}.note-icon-arrow-circle-up:before{content:'\f10b'}.note-icon-arrows-alt:before{content:'\f10c'}.note-icon-arrows-h:before{content:'\f10d'}.note-icon-arrows-v:before{content:'\f10e'}.note-icon-bold:before{content:'\f10f'}.note-icon-caret:before{content:'\f110'}.note-icon-chain-broken:before{content:'\f111'}.note-icon-circle:before{content:'\f112'}.note-icon-close:before{content:'\f113'}.note-icon-code:before{content:'\f114'}.note-icon-col-after:before{content:'\f115'}.note-icon-col-before:before{content:'\f116'}.note-icon-col-remove:before{content:'\f117'}.note-icon-eraser:before{content:'\f118'}.note-icon-font:before{content:'\f119'}.note-icon-frame:before{content:'\f11a'}.note-icon-italic:before{content:'\f11b'}.note-icon-link:before{content:'\f11c'}.note-icon-magic:before{content:'\f11d'}.note-icon-menu-check:before{content:'\f11e'}.note-icon-minus:before{content:'\f11f'}.note-icon-orderedlist:before{content:'\f120'}.note-icon-pencil:before{content:'\f121'}.note-icon-picture:before{content:'\f122'}.note-icon-question:before{content:'\f123'}.note-icon-redo:before{content:'\f124'}.note-icon-row-above:before{content:'\f125'}.note-icon-row-below:before{content:'\f126'}.note-icon-row-remove:before{content:'\f127'}.note-icon-special-character:before{content:'\f128'}.note-icon-square:before{content:'\f129'}.note-icon-strikethrough:before{content:'\f12a'}.note-icon-subscript:before{content:'\f12b'}.note-icon-summernote:before{content:'\f12c'}.note-icon-superscript:before{content:'\f12d'}.note-icon-table:before{content:'\f12e'}.note-icon-text-height:before{content:'\f12f'}.note-icon-trash:before{content:'\f130'}.note-icon-underline:before{content:'\f131'}.note-icon-undo:before{content:'\f132'}.note-icon-unorderedlist:before{content:'\f133'}.note-icon-video:before{content:'\f134'}.note-frame *{box-sizing:border-box;color:#000}.note-frame{position:relative}.note-frame:after{content:'';font-size:13px;color:#999;position:absolute;bottom:-12px;right:0}.note-btn-group,.note-dropdown{position:relative}.note-editable p{margin:0 0 10px}.note-editable kbd{font-weight:700;box-sizing:border-box;padding:3px 5px;color:#fff;border-radius:2px;background-color:#000}.note-toolbar{border-bottom:1px solid #e2e2e2;z-index:1 !important;}.note-btn-group{display:inline-block;margin-right:8px}.note-btn-group>.note-btn-group{margin-right:0}.note-btn-group>.note-btn,.note-btn-group>.note-btn-group{margin-left:-4px;border-radius:0}.note-btn-group>.note-btn-group.active,.note-btn-group>.note-btn-group.focus,.note-btn-group>.note-btn.active,.note-btn-group>.note-btn.focus{border-radius:0}.note-btn-group>.note-btn-group:first-child,.note-btn-group>.note-btn:first-child{margin-left:0;border-top-left-radius:1px;border-bottom-left-radius:1px}.note-btn-group>.note-btn-group:first-child.active,.note-btn-group>.note-btn-group:first-child.focus,.note-btn-group>.note-btn:first-child.active,.note-btn-group>.note-btn:first-child.focus{border-top-left-radius:1px;border-bottom-left-radius:1px}.note-btn-group>.note-btn-group:last-child:not(.note-dropdown),.note-btn-group>.note-btn-group:last-child:not(.note-dropdown).active,.note-btn-group>.note-btn-group:last-child:not(.note-dropdown).focus,.note-btn-group>.note-btn:last-child:not(.note-dropdown),.note-btn-group>.note-btn:last-child:not(.note-dropdown).active,.note-btn-group>.note-btn:last-child:not(.note-dropdown).focus{border-top-right-radius:1px;border-bottom-right-radius:1px}.note-btn-group.open>.note-dropdown{display:block}.note-btn{font-size:14px;font-weight:400;line-height:1.4;display:inline-block;margin-bottom:0;padding:5px 10px;cursor:pointer;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;text-align:center;vertical-align:middle;white-space:nowrap;color:#333;border:1px solid #fff;border-radius:1px;background-color:#fff;touch-action:manipulation}.note-btn.disabled.focus,.note-btn.disabled:focus,.note-btn[disabled].focus,.note-btn[disabled]:focus,fieldset[disabled] .note-btn.focus,fieldset[disabled] .note-btn:focus{border-color:#fff;background-color:#fff}.note-btn.focus,.note-btn:focus,.note-btn:hover{text-decoration:none;color:#333;border:1px solid #fff;-webkit-border-radius:1px;-moz-border-radius:1px;border-radius:1px;outline:0;background-color:#f4f4f4}.note-btn.disabled,.note-btn[disabled],fieldset[disabled] .note-btn{cursor:not-allowed;-webkit-box-shadow:none;-moz-box-shadow:none;box-shadow:none;-webkit-opacity:.65;-khtml-opacity:.65;-moz-opacity:.65;-ms-filter:alpha(opacity=65);filter:alpha(opacity=65);opacity:.65}.note-btn-primary{color:#fff;background:#fa6362}.note-btn-primary.focus,.note-btn-primary:focus,.note-btn-primary:hover{text-decoration:none;color:#fff;border:1px solid #fff;-webkit-border-radius:1px;-moz-border-radius:1px;border-radius:1px;background-color:#fa6362}.note-btn-block{display:block;width:100%}.note-btn-block+.note-btn-block{margin-top:5px}input[type=submit].note-btn-block,input[type=reset].note-btn-block,input[type=button].note-btn-block{width:100%}button.close{padding:0;cursor:pointer;border:0;background:0 0;-webkit-appearance:none}.close{font-size:21px;line-height:1;float:right;opacity:.2;color:#000}.close:hover{-webkit-opacity:1;-khtml-opacity:1;-moz-opacity:1;-ms-filter:alpha(opacity=100);filter:alpha(opacity=100);opacity:1}.note-dropdown-menu{position:absolute;z-index:1000;top:100%;left:0;display:none;float:left;min-width:100px;padding:5px;text-align:left;border:1px solid #e2e2e2;background:#fff;background-clip:padding-box;-webkit-box-shadow:0 1px 1px rgba(0,0,0,.06);-moz-box-shadow:0 1px 1px rgba(0,0,0,.06);box-shadow:0 1px 1px rgba(0,0,0,.06)}.note-btn-group.open .note-dropdown-menu,.note-dropdown-item{display:block}.note-dropdown-item:hover{background-color:#ebebeb}a.note-dropdown-item{margin:2px 0;text-decoration:none;color:#000}.note-modal{position:absolute;z-index:1050;top:0;right:0;bottom:0;left:0;display:none;-webkit-opacity:1;-khtml-opacity:1;-moz-opacity:1;-ms-filter:alpha(opacity=100);filter:alpha(opacity=100);opacity:1}.note-modal.open{display:block}.note-modal-content{position:relative;width:auto;margin:30px 20px;border:1px solid rgba(0,0,0,.2);outline:0;background:#fff;background-clip:border-box}.note-modal-header{border:1px solid #ededef;padding:30px 20px 20px}.note-modal-header .close{margin-top:-10px}.note-modal-body{position:relative;padding:20px 30px}.note-modal-footer{height:40px;text-align:center;padding:10px}.note-modal-footer a{color:#337ab7;text-decoration:none}.note-modal-footer a:focus,.note-modal-footer a:hover{color:#23527c;text-decoration:underline}.note-modal-footer .note-btn{float:right}.note-modal-title{font-size:26px;line-height:1.4;margin:0;text-align:left;color:#42515f}.note-modal-backdrop{position:absolute;z-index:1040;top:0;right:0;bottom:0;left:0;display:none;background:#000;-webkit-opacity:.5;-khtml-opacity:.5;-moz-opacity:.5;-ms-filter:alpha(opacity=50);filter:alpha(opacity=50);opacity:.5}.note-modal-backdrop.open{display:block}@media(min-width:768px){.note-modal-content{width:600px;margin:30px auto}}@media(min-width:992px){.note-modal-content-large{width:900px}}.note-form-group{padding-bottom:20px}.note-form-group:last-child{padding-bottom:0}.note-form-label{font-size:16px;font-weight:700;display:contents;margin-bottom:10px;color:#42515f}.note-input{font-size:14px;display:block;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;width:100%;padding:6px 4px;border:1px solid #ededef;outline:0;background:#fff}.note-popover,.note-tooltip{font-size:13px;display:block}.note-popover-arrow,.note-popover-arrow::after,.note-tooltip-arrow{position:absolute;width:0;height:0}.note-input::-webkit-input-placeholder{color:#eee}.note-input:-moz-placeholder{color:#eee}.note-input::-moz-placeholder{color:#eee}.note-input:-ms-input-placeholder{color:#eee}.note-tooltip{position:absolute;z-index:1070;-webkit-opacity:0;-khtml-opacity:0;-moz-opacity:0;-ms-filter:alpha(opacity=0);filter:alpha(opacity=0);opacity:0}.note-tooltip.in{-webkit-opacity:.9;-khtml-opacity:.9;-moz-opacity:.9;-ms-filter:alpha(opacity=90);filter:alpha(opacity=90);opacity:.9}.note-tooltip.top{margin-top:-3px;padding:5px 0}.note-tooltip.right{margin-left:3px;padding:0 5px}.note-tooltip.bottom{margin-top:3px;padding:5px 0}.note-tooltip.left{margin-left:-3px;padding:0 5px}.note-tooltip.bottom .note-tooltip-arrow{top:0;left:50%;margin-left:-5px;border-width:0 5px 5px;border-bottom-color:#000}.note-tooltip.top .note-tooltip-arrow{bottom:0;left:50%;margin-left:-5px;border-width:5px 5px 0;border-top-color:#000}.note-tooltip.right .note-tooltip-arrow{top:50%;left:0;margin-top:-5px;border-width:5px 5px 5px 0;border-right-color:#000}.note-tooltip.left .note-tooltip-arrow{top:50%;right:0;margin-top:-5px;border-width:5px 0 5px 5px;border-left-color:#000}.note-tooltip-arrow{border-style:solid;border-color:transparent}.note-tooltip-content{max-width:200px;padding:3px 8px;text-align:center;color:#fff;background-color:#000}.note-popover{position:absolute;z-index:1060;display:none;border:1px solid #ccc;background:#fff;max-width:none}.note-popover.in{display:none}.note-popover.top{margin-top:-3px;padding:5 0}.note-popover.right{margin-left:3px;padding:0 5}.note-popover.bottom{margin-top:3px;padding:5 0}.note-popover.left{margin-left:-3px;padding:0 5}.note-popover.bottom .note-popover-arrow{top:-11px;left:50%;margin-left:-10px;border-top-width:0;border-bottom-color:#999;border-bottom-color:rgba(0,0,0,.25)}.note-popover.bottom .note-popover-arrow::after{top:1px;margin-left:-10px;content:'';border-top-width:0;border-bottom-color:#fff}.note-popover.top .note-popover-arrow{bottom:-11px;left:50%;margin-left:-10px;border-top-color:#999;border-top-color:rgba(0,0,0,.25);border-bottom-width:0}.note-popover.top .note-popover-arrow::after{bottom:1px;margin-left:-10px;content:'';border-top-color:#fff;border-bottom-width:0}.note-popover.right .note-popover-arrow{top:50%;left:-11px;margin-top:-10px;border-right-color:#999;border-right-color:rgba(0,0,0,.25);border-left-width:0}.note-popover.right .note-popover-arrow::after{left:1px;margin-top:-10px;content:'';border-right-color:#fff;border-left-width:0}.note-popover.left .note-popover-arrow{top:50%;right:-11px;margin-top:-10px;border-right-width:0;border-left-color:#999;border-left-color:rgba(0,0,0,.25)}.note-popover.left .note-popover-arrow::after{right:1px;margin-top:-10px;content:'';border-right-width:0;border-left-color:#fff}.note-popover-arrow{border:11px solid transparent}.note-popover-arrow::after{display:block;content:'';border:10px solid transparent}.note-popover-content{min-width:100px;min-height:30px;padding:3px 8px;text-align:center;color:#000;background-color:#fff}.note-editor{position:relative}.note-editor .note-dropzone{position:absolute;z-index:100;display:none;opacity:.95;color:#87cefa;background-color:#fff;pointer-event:none}.note-editor .note-dropzone .note-dropzone-message{font-size:28px;font-weight:700;display:table-cell;text-align:center;vertical-align:middle}.note-editor .note-dropzone.hover{color:#098ddf}.note-editor.dragover .note-dropzone{display:table}.note-editor .note-editing-area{position:relative}.note-editor .note-editing-area p{margin:0 0 10px}.note-editor .note-editing-area .note-editable{outline:0}.note-editor .note-editing-area .note-editable table{width:100%;border-collapse:collapse}.note-editor .note-editing-area .note-editable table td,.note-editor .note-editing-area .note-editable table th{padding:5px 3px;border:1px solid #ececec}.note-editor .note-editing-area .note-editable sup{vertical-align:super}.note-editor .note-editing-area .note-editable sub{vertical-align:sub}.note-editor .note-editing-area .note-editable a{background-color:inherit;text-decoration:inherit;font-family:inherit;font-weight:inherit;color:#337ab7}.note-editor .note-editing-area .note-editable a:focus,.note-editor .note-editing-area .note-editable a:hover{color:#23527c;text-decoration:underline;outline:0}.note-editor .note-editing-area .note-editable figure{margin:0}.note-editor.note-frame{border:1px solid #a9a9a9}.note-editor.note-frame.codeview .note-editing-area .note-editable{display:none}.note-editor.note-frame.codeview .note-editing-area .note-codable{display:block}.note-editor.note-frame .note-editing-area .note-editable{overflow:auto;padding:10px;word-wrap:break-word;color:#000;background-color:#fff}.note-editor.note-frame .note-editing-area .note-editable[contenteditable=false]{background-color:#e5e5e5}.note-editor.note-frame .note-editing-area .note-codable{font-family:Menlo,Monaco,monospace,sans-serif;font-size:14px;display:none;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;width:100%;margin-bottom:0;padding:10px;resize:none;color:#ccc;border:0;-webkit-border-radius:0;-moz-border-radius:0;border-radius:0;background-color:#222;box-shadow:none}.note-editor.note-frame.fullscreen{position:fixed;z-index:1050;top:0;left:0;width:100%!important}.note-editor.note-frame.fullscreen .note-editable{background-color:#fff}.note-editor.note-frame.fullscreen .note-resizebar{display:none}.note-status-output{display:block;width:100%;font-size:14px;line-height:1.42857143;height:20px;margin-bottom:0;color:#000;border:0;border-top:1px solid #e2e2e2}.note-status-output:empty{height:0;border-top:0 solid transparent}.note-status-output .pull-right{float:right!important}.note-status-output .text-muted{color:#777}.note-status-output .text-primary{color:#286090}.note-status-output .text-success{color:#3c763d}.note-status-output .text-info{color:#31708f}.note-status-output .text-warning{color:#8a6d3b}.note-status-output .text-danger{color:#a94442}.note-status-output .alert{margin:-7px 0 0;padding:7px 10px 2px;border-radius:0;color:#000;background-color:#f5f5f5}.note-status-output .alert .note-icon{margin-right:5px}.note-status-output .alert-success{color:#3c763d!important;background-color:#dff0d8!important}.note-status-output .alert-info{color:#31708f!important;background-color:#d9edf7!important}.note-status-output .alert-warning{color:#8a6d3b!important;background-color:#fcf8e3!important}.note-status-output .alert-danger{color:#a94442!important;background-color:#f2dede!important}.note-editor.note-frame .note-statusbar{border-top:1px solid #e2e2e2;border-bottom-right-radius:4px;border-bottom-left-radius:4px;background-color:#fff}.note-editor.note-frame .note-statusbar .note-resizebar{width:100%;height:8px;padding-top:1px;cursor:ns-resize}.note-editor.note-frame .note-statusbar .note-resizebar .note-icon-bar{width:20px;margin:1px auto;border-top:1px solid #a9a9a9}.note-editor.note-frame .note-placeholder{padding:10px}.note-popover .note-popover-content a{display:inline-block;overflow:hidden;max-width:200px;vertical-align:middle;white-space:nowrap;text-overflow:ellipsis;color:#337ab7;text-decoration:none}.note-popover .note-popover-content a:focus,.note-popover .note-popover-content a:hover{color:#23527c;text-decoration:underline}.note-popover .note-popover-content a:focus{outline:dotted thin;outline:-webkit-focus-ring-color auto 5px;outline-offset:-2px}.note-popover .note-popover-arrow{left:20px!important}.note-popover .note-popover-content,.note-toolbar{margin:0;padding:0 0 5px 5px;background-color:#fff}.note-popover .note-popover-content>.note-btn-group,.note-toolbar>.note-btn-group{margin-top:5px;margin-right:5px;margin-left:0}.note-popover .note-popover-content .note-btn-group .note-table,.note-toolbar .note-btn-group .note-table{min-width:0;padding:5px}.note-popover .note-popover-content .note-btn-group .note-table .note-dimension-picker,.note-toolbar .note-btn-group .note-table .note-dimension-picker{font-size:18px}.note-popover .note-popover-content .note-btn-group .note-table .note-dimension-picker .note-dimension-picker-mousecatcher,.note-toolbar .note-btn-group .note-table .note-dimension-picker .note-dimension-picker-mousecatcher{position:absolute!important;z-index:3;width:10em;height:10em;cursor:pointer}.note-popover .note-popover-content .note-btn-group .note-table .note-dimension-picker .note-dimension-picker-unhighlighted,.note-toolbar .note-btn-group .note-table .note-dimension-picker .note-dimension-picker-unhighlighted{position:relative!important;z-index:1;width:5em;height:5em;background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASAgMAAAAroGbEAAAACVBMVEUAAIj4+Pjp6ekKlAqjAAAAAXRSTlMAQObYZgAAAAFiS0dEAIgFHUgAAAAJcEhZcwAACxMAAAsTAQCanBgAAAAHdElNRQfYAR0BKhmnaJzPAAAAG0lEQVQI12NgAAOtVatWMTCohoaGUY+EmIkEAEruEzK2J7tvAAAAAElFTkSuQmCC)}.note-popover .note-popover-content .note-btn-group .note-table .note-dimension-picker .note-dimension-picker-highlighted,.note-toolbar .note-btn-group .note-table .note-dimension-picker .note-dimension-picker-highlighted{position:absolute!important;z-index:2;width:1em;height:1em;background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASAgMAAAAroGbEAAAACVBMVEUAAIjd6vvD2f9LKLW+AAAAAXRSTlMAQObYZgAAAAFiS0dEAIgFHUgAAAAJcEhZcwAACxMAAAsTAQCanBgAAAAHdElNRQfYAR0BKwNDEVT0AAAAG0lEQVQI12NgAAOtVatWMTCohoaGUY+EmIkEAEruEzK2J7tvAAAAAElFTkSuQmCC)}.note-handle .note-control-selection>div,.note-placeholder{position:absolute}.note-popover .note-popover-content .note-style blockquote,.note-popover .note-popover-content .note-style h1,.note-popover .note-popover-content .note-style h2,.note-popover .note-popover-content .note-style h3,.note-popover .note-popover-content .note-style h4,.note-popover .note-popover-content .note-style h5,.note-popover .note-popover-content .note-style h6,.note-toolbar .note-style blockquote,.note-toolbar .note-style h1,.note-toolbar .note-style h2,.note-toolbar .note-style h3,.note-toolbar .note-style h4,.note-toolbar .note-style h5,.note-toolbar .note-style h6{margin:0}.note-popover .note-popover-content .note-color .dropdown-toggle,.note-toolbar .note-color .dropdown-toggle{width:20px;padding-left:5px}.note-popover .note-popover-content .note-color .note-dropdown-menu,.note-toolbar .note-color .note-dropdown-menu{-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;min-width:346px}.note-popover .note-popover-content .note-color .note-dropdown-menu .note-palette,.note-toolbar .note-color .note-dropdown-menu .note-palette{display:inline-block;width:160px;margin:0}.note-popover .note-popover-content .note-color .note-dropdown-menu .note-palette:first-child,.note-toolbar .note-color .note-dropdown-menu .note-palette:first-child{margin:0 15px 0 5px}.note-popover .note-popover-content .note-color .note-dropdown-menu .note-palette .note-palette-title,.note-toolbar .note-color .note-dropdown-menu .note-palette .note-palette-title{font-size:12px;margin:2px 7px;text-align:center;border-bottom:1px solid #eee}.note-popover .note-popover-content .note-color .note-dropdown-menu .note-palette .note-color-reset,.note-toolbar .note-color .note-dropdown-menu .note-palette .note-color-reset{width:100%;margin:3px;padding:2px 3px;cursor:pointer;border:0;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;background-color:#fff}.note-popover .note-popover-content .note-color .note-dropdown-menu .note-palette .note-color-row,.note-toolbar .note-color .note-dropdown-menu .note-palette .note-color-row{height:20px}.note-popover .note-popover-content .note-color .note-dropdown-menu .note-palette .note-color-reset:hover,.note-toolbar .note-color .note-dropdown-menu .note-palette .note-color-reset:hover{background:#eee}.note-popover .note-popover-content .note-para .note-dropdown-menu,.note-toolbar .note-para .note-dropdown-menu{min-width:216px;padding:5px}.note-popover .note-popover-content .note-para .note-dropdown-menu>div:first-child,.note-toolbar .note-para .note-dropdown-menu>div:first-child{margin-right:5px}.note-popover .note-popover-content .note-btn-fontname .note-dropdown-menu,.note-toolbar .note-btn-fontname .note-dropdown-menu{min-width:200px}.note-popover .note-popover-content .note-dropdown-menu,.note-toolbar .note-dropdown-menu{min-width:160px}.note-popover .note-popover-content .note-dropdown-menu.right,.note-toolbar .note-dropdown-menu.right{right:0;left:auto}.note-popover .note-popover-content .note-dropdown-menu.right::after,.note-popover .note-popover-content .note-dropdown-menu.right::before,.note-toolbar .note-dropdown-menu.right::after,.note-toolbar .note-dropdown-menu.right::before{right:10px;left:auto!important}.note-popover .note-popover-content .note-dropdown-menu.note-check .note-dropdown-item i,.note-toolbar .note-dropdown-menu.note-check .note-dropdown-item i{visibility:hidden;color:#000}.note-popover .note-popover-content .note-dropdown-menu.note-check .note-dropdown-item.checked i,.note-toolbar .note-dropdown-menu.note-check .note-dropdown-item.checked i{visibility:visible}.note-popover .note-popover-content .note-dropdown-menu .note-dropdown-item>*,.note-toolbar .note-dropdown-menu .note-dropdown-item>*{margin:0}.note-popover .note-popover-content .note-fontsize-10,.note-toolbar .note-fontsize-10{font-size:10px}.note-popover .note-popover-content .note-color-palette,.note-toolbar .note-color-palette{line-height:1}.note-popover .note-popover-content .note-color-palette div .note-color-btn,.note-toolbar .note-color-palette div .note-color-btn{width:20px;height:20px;margin:0;padding:0;border:1px solid #fff}.note-popover .note-popover-content .note-color-palette div .note-color-btn:hover,.note-toolbar .note-color-palette div .note-color-btn:hover{border:1px solid #000}.note-modal .note-modal-body label{display:inline-block;margin-bottom:2px;padding:2px 5px}.note-modal .note-modal-body .help-list-item:hover{background-color:#e0e0e0}@-moz-document url-prefix(){.note-image-input{height:auto}}.note-placeholder{display:none;color:#ccc}.note-handle .note-control-selection{position:absolute;display:none;border:1px solid #000}.note-handle .note-control-selection .note-control-selection-bg{width:100%;height:100%;background-color:#000;-webkit-opacity:.3;-khtml-opacity:.3;-moz-opacity:.3;-ms-filter:alpha(opacity=30);filter:alpha(opacity=30);opacity:.3}.note-handle .note-control-selection .note-control-handle,.note-handle .note-control-selection .note-control-holder,.note-handle .note-control-selection .note-control-sizing{width:7px;height:7px;border:1px solid #000}.note-handle .note-control-selection .note-control-sizing{background-color:#fff}.note-handle .note-control-selection .note-control-nw{top:-5px;left:-5px;border-right:0;border-bottom:0}.note-handle .note-control-selection .note-control-ne{top:-5px;right:-5px;border-bottom:0;border-left:none}.note-handle .note-control-selection .note-control-sw{bottom:-5px;left:-5px;border-top:0;border-right:0}.note-handle .note-control-selection .note-control-se{right:-5px;bottom:-5px;cursor:se-resize}.note-handle .note-control-selection .note-control-se.note-control-holder{cursor:default;border-top:0;border-left:none}.note-handle .note-control-selection .note-control-selection-info{font-size:12px;right:0;bottom:0;margin:5px;padding:5px;color:#fff;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;background-color:#000;-webkit-opacity:.7;-khtml-opacity:.7;-moz-opacity:.7;-ms-filter:alpha(opacity=70);filter:alpha(opacity=70);opacity:.7}.note-hint-popover{min-width:100px;padding:2px}.note-hint-popover .note-popover-content{overflow:auto;max-height:150px;padding:3px}.note-hint-popover .note-popover-content .note-hint-group .note-hint-item{display:block!important;padding:3px}.note-hint-popover .note-popover-content .note-hint-group .note-hint-item.active,.note-hint-popover .note-popover-content .note-hint-group .note-hint-item:hover{font-weight:400;line-height:1.4;display:block;clear:both;cursor:pointer;white-space:nowrap;text-decoration:none;color:#fff;outline:0;background-color:#428bca}.help-list-item label{display:inline-block;margin-bottom:5px}</style>
<style>
.none-padding{padding:0 !important;}
.right-border-dotted{border-right: 1px dotted #fff;}
.left-mov-half{left:50% !important;}
.left-radio{display: flex; font-weight: bold; font-size: 20px; align-items: center; margin-right: 50px;}
	label{
	pointer-events:auto !important;}
 /* --------------------------------toggle--------------------------------------- */
.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

.switch input {display:none;}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}
</style>
</head>
<main class="container padding-top-ninety">
							<form action="/" method="post">
<div class="sub-container none-padding">
	<div>
		<!-- snb -->
		<div class="xe-col-sm-9 sub-content">
			<div class="board_list">
				<h1 class="write-page-title"><a>방 등록</a></h1>
				<div class="detail-frame">
					<div class="form form-reset">
							<div class="field-wrap search-toggle-css">
								<label class="write-form-label">주소</label>
								<input class="community-input none-padding" type="text" required="" autocomplete="off">
							</div>
							
							<div class="field-wrap search-toggle-css" style="display:flex;">
								<label class="write-form-label">연락처</label>
								<input class="community-input none-padding right-border-dotted" type="text" required="" autocomplete="off">
								<label class="write-form-label left-mov-half">최소기간</label>
								<input class="community-input none-padding" type="text" required="" autocomplete="off">
							</div>
							
							<div class="field-wrap search-toggle-css" style="display:flex;">
								<label class="write-form-label">보증금</label>
								<input class="community-input none-padding right-border-dotted" type="text" required="" autocomplete="off">
								<label class="write-form-label left-mov-half">가격</label>
								<input class="community-input none-padding" type="text" required="" autocomplete="off">
							</div>
							
							<div class="field-wrap search-toggle-css" style="display:flex; ">
									<label class="write-form-label">PUB</label>
								<div class="none-padding right-border-dotted flex-center" style="width: 100%;">
								<label class="switch">
								  <input type="checkbox">
								  <span class="slider"></span>
								</label>
								</div>
								<label class="write-form-label" style="left:55%;">취사여부</label>
								<div class="flex-center" style="width: 100%;">
									<span class="left-radio">가능 <input type="radio" checked name="cook"> </span>
									<span class="left-radio" style="margin-right:-50px;">불가능 <input type="radio" name="cook"></span>
								</div>
							</div>
									
							<div class="field-wrap search-toggle-css" style="display:flex; ">
									<label class="write-form-label">성별</label>
								<div class="none-padding right-border-dotted flex-center" style="width: 100%;">
									<span class="left-radio">여자만 <input type="radio" checked name="sex"> </span>
									<span class="left-radio">남자만 <input type="radio" name="sex"> </span>
									<span class="left-radio" style="margin-right:-50px;">무관 <input type="radio" name="sex"></span>
								</div>
								<label class="write-form-label" style="left:55%;">근처MRT</label>
								<div class="none-padding right-border-dotted flex-center" style="width: 100%;  justify-content: flex-end;">
									<select class="write-select-size" id="location"> 
										<option>동</option>
										<option>서</option>
										<option>남</option>
										<option>북</option>
									</select>
									
									
									<select class="write-select-size" style="width:50%; "> 
										<option></option>
										<option></option>
										<option></option>
										<option></option>
									</select>

								</div>
							</div>
							
							<div class="field-wrap search-toggle-css">
								<label class="write-form-label">방종류</label>
								
							</div>
							
							<div class="field-wrap search-toggle-css">
								<label class="write-form-label">제목</label>
								<input class="community-input none-padding" type="text" required="" autocomplete="off">
							</div>
							
							<div class="field-wrap search-toggle-css" style="min-height:300px;">
								<label class="write-form-label write-label-content">내용</label>
								<input class="community-input none-padding" type="text" required="" autocomplete="off">
							</div>
							
							<div class="field-wrap search-toggle-css">
								<label class="write-form-label">대표이미지</label>
								<input class="community-input none-padding" type="file" required="" autocomplete="off">
							</div>
							
							<div class="field-wrap search-toggle-css">
								<label class="write-form-label">세부이미지</label>
								<input class="community-input none-padding" type="file" required="" autocomplete="off">
							</div>
							
							<div class="flex-center">
								<button class="button button-block" style="background-color:#444">취소</button>
								<button class="button button-block" style="background-color:#444">등록</button>
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
							</form>
</main>
<script	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="${ctx}/resources/js/index.js"></script>
<script>
	$(function(){
		var location = $("#location");
			
	});
	
</script>

