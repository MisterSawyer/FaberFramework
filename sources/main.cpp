#include "app/app.h"
#include "framework/system/windows/windows-objects-factory.h"

struct AppMock : public fbr::IApp
{
	bool OnInit(fbr::AppInitContext appInitContext) override
	{
		return true;
	}

	void OnTick(const float timeDelta)override
	{

	}

	void OnInput(const fbr::InputEvent inputEvent) override
	{
	
	}

	//optional override (won't be invoked if renderer is not connected)
	void OnRender(fbr::IRenderFrame* frame) override
	{
		// here you can add objects to rendering frame etc
	}

	void OnClose() override
	{

	}
};

int __stdcall WinMain(_In_ HINSTANCE instance, _In_opt_ HINSTANCE previnstance, _In_ LPSTR cmdline, _In_ int cmdshow)
{
	//Choose system
	std::unique_ptr<fbr::windows::WindowsSystemObjectsFactory> systemFactory = std::make_unique<fbr::windows::WindowsSystemObjectsFactory>(instance);
	systemFactory->CreateConsole();

	//Chose renderer
	fbr::RendererSystemCreator rendererCreator(systemFactory->GetRendererContextCreator(), fbr::opengl::OpenGLRendererFactory());

	std::unique_ptr<fbr::Framework> framework = std::make_unique<fbr::Framework>(systemFactory.get());

	//framework->ChooseRenderer(&rendererCreator);
	framework->RegisterApp(std::make_unique<AppMock>());

	if (!framework->Init())
		return -1;

	framework->Loop();

	return 0;
}