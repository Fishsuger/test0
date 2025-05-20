var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.UseDefaultFiles();   // 支持默认访问 index.html
app.UseStaticFiles();

app.MapGet("/test1", () => Results.Redirect("/test1.html"));
app.MapGet("/test2", () => Results.Redirect("/test2.html"));
app.MapGet("/test3", () => Results.Redirect("/test3.html"));
app.MapGet("/test4", () => Results.Redirect("/test4.xml"));
app.MapGet("/clock", () => Results.Redirect("/clock.html"));
app.MapGet("/modified_form", () => Results.Redirect("/modified_form.html"));
app.MapGet("/3_3", () => Results.Redirect("/3_3.html"));
app.MapGet("/3_4", () => Results.Redirect("/3_4.html"));
app.MapGet("/3_5", () => Results.Redirect("/3_5.html"));
app.Run();
