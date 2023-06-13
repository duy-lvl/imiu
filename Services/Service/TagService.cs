
using DAL.Repository.Interface;
using Services.CustomeMapper.Interface;
using Services.JsonResult;
using Services.Service.Interface;
using Services.ServiceModel;

namespace Services.Service;

public class TagService : ITagService
{
    private readonly ITagRepository _tagRepository;
    private readonly ICustomMapper _customMapper;

    public TagService(ITagRepository tagRepository, ICustomMapper customMapper)
    {
        _tagRepository = tagRepository;
        _customMapper = customMapper;
    }

    public ResponseObject GetTag()
    {
        var tags =_tagRepository.GetAllTagsExceptDiseases();
        var tagModels = _customMapper.Map(tags);
        return new GetRequestResponse<List<TagModel>>()
        {
            Data = tagModels,
            Message = "Thành công",
            Status = 200
        };
    }
}