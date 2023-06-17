using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Services.JsonResult;
using Services.Service.Interface;

namespace ImiuAPI.Controllers;
[ApiController]
[Route("api/v1/tags")]
public class TagController
{
    private readonly ITagService _tagService;

    public TagController(ITagService tagService)
    {
        _tagService = tagService;
    }

    [HttpGet]
    [AllowAnonymous]
    public IActionResult GetAllTag()
    {
        var result = _tagService.GetTag();
        var jsonResult = new JsonResult(result);
        jsonResult.StatusCode = result.Status;
        return jsonResult;
    }
}