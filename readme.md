Start="demand" in ServiceInstall: This ensures the service is installed but set to manual start.
No Start="install" in ServiceControl: By removing this attribute, the service will not be started automatically after installation. However, it will still be controlled (stopped/removed) during uninstall.