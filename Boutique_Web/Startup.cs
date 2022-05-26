using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Boutique_Web.Startup))]
namespace Boutique_Web
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
