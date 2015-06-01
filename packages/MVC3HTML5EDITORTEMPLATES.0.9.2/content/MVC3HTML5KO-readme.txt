The MVC3 HTML5 Editor Templates allow you to use the EditorFor() syntax 
and produce rich HTML5 input fields from the DataType attribute on your
models and also support incorporating html attributes in your 
Razor View Syntax.

This is particularly helpful when using knockout/js with MVC3 templates.

There is one QUIRK, which defies convention slightly, but works beautifully!

When using the @Html.EditorFor syntax in your view, and specifying additional 
html attributes, be sure to create a new ViewDataDictionary.

For Example:
@Html.EditorFor(model => model.Subject, 
	new ViewDataDictionary(new { data_bind = "value:Subject" }))
	
Do NOT DO THIS:
@Html.EditorFor(model => model.Subject, 
	new { data_bind = "value:Subject" })
	

When decorating your models, use the [DataType(DataType.Number)] or any
other enumeration from the DataType enumeration to get clean, HTML5
input tags.