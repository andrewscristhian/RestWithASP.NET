using System.IO;

namespace RestWithASP_NETCore.Business.Implementations
{
    public class FileBusiness : IFileBusiness
    {
        public byte[] GetPDFFile()
        {
            string path = Directory.GetCurrentDirectory();
            var fullPath = path + "\\Other\\aspnet-life-cycles-events.pdf";
            return File.ReadAllBytes(fullPath);
        }
    }
}
