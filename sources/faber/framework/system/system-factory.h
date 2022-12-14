#pragma once

#include <framework/window/window.h>
#include <framework/renderer/renderer.h>

namespace fbr
{
	struct SystemRendererContextCreator
	{
		virtual void SetWindow(fbr::Window* window) = 0;
	};

	class ISystemObjectsFactory
	{
	public:
		virtual ~ISystemObjectsFactory() = default;

		virtual std::unique_ptr<Window> MakeWindow(const Resolution& resolution) const = 0;

		virtual std::unique_ptr<IRenderer> MakeRenderer(fbr::Window* window)const = 0;

		virtual bool CreateConsole()const = 0;
		virtual void DestroyConsole()const = 0;
	protected:
	};
}