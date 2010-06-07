﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<N2.Templates.Mvc.Areas.Tests.Models.DemoViewModel>" %>
<div id="demo" class="uc">
	<style>.field-validation-error { color:red; display:block; }</style>
	<h4>Sign up for the demo</h4>
	<div style="display:none" class="box"><div class="inner">
		<% using(Html.BeginForm("Login", null)){ %>
			<p>
				<%= Html.LabelFor(m => m.Email) %>
				<%= Html.EditorFor(m => m.Email) %>
				<%= Html.ValidationMessageFor(m => m.Email) %>
			</p>
			<%= Html.SubmitButton("Start", "Start demo") %>
		<%} %>
	</div></div>
</div>
<script type="text/javascript">	//<![CDATA[
	$(document).ready(function() {
		$("#demo .box").css("background-color", "#ffc").fadeIn("slow", function() { $(this).css("background-color", "#fff"); });
	});
//]]></script>