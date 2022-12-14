#pragma once

#include <framework/framework.h>
#include <framework/framework-listener/framework-listener.h>

namespace fbr
{
	class FrameworkAppListener : public IFrameworkListener
	{
	public:
		FrameworkAppListener(fbr::Framework* framework, const fbr::Framework::AppId_t& appID)
			: IFrameworkListener(framework),
			m_appID(appID)
		{}

		void RequestClose();

	private:
		fbr::Framework::AppId_t m_appID;
	};
}