<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="HealthEndpointMonitoring.Cloud" generation="1" functional="0" release="0" Id="1aac4ae6-510a-447d-9afa-d12870160ba0" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="HealthEndpointMonitoring.CloudGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="HealthEndpointMonitoring.Web:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/HealthEndpointMonitoring.Cloud/HealthEndpointMonitoring.CloudGroup/LB:HealthEndpointMonitoring.Web:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="HealthEndpointMonitoring.Web:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/HealthEndpointMonitoring.Cloud/HealthEndpointMonitoring.CloudGroup/MapHealthEndpointMonitoring.Web:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="HealthEndpointMonitoring.Web:StorageAccount" defaultValue="">
          <maps>
            <mapMoniker name="/HealthEndpointMonitoring.Cloud/HealthEndpointMonitoring.CloudGroup/MapHealthEndpointMonitoring.Web:StorageAccount" />
          </maps>
        </aCS>
        <aCS name="HealthEndpointMonitoring.Web:Test.ObscurePath" defaultValue="">
          <maps>
            <mapMoniker name="/HealthEndpointMonitoring.Cloud/HealthEndpointMonitoring.CloudGroup/MapHealthEndpointMonitoring.Web:Test.ObscurePath" />
          </maps>
        </aCS>
        <aCS name="HealthEndpointMonitoring.Web:Test.ReturnStatusCode" defaultValue="">
          <maps>
            <mapMoniker name="/HealthEndpointMonitoring.Cloud/HealthEndpointMonitoring.CloudGroup/MapHealthEndpointMonitoring.Web:Test.ReturnStatusCode" />
          </maps>
        </aCS>
        <aCS name="HealthEndpointMonitoring.WebInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/HealthEndpointMonitoring.Cloud/HealthEndpointMonitoring.CloudGroup/MapHealthEndpointMonitoring.WebInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:HealthEndpointMonitoring.Web:Endpoint1">
          <toPorts>
            <inPortMoniker name="/HealthEndpointMonitoring.Cloud/HealthEndpointMonitoring.CloudGroup/HealthEndpointMonitoring.Web/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapHealthEndpointMonitoring.Web:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/HealthEndpointMonitoring.Cloud/HealthEndpointMonitoring.CloudGroup/HealthEndpointMonitoring.Web/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapHealthEndpointMonitoring.Web:StorageAccount" kind="Identity">
          <setting>
            <aCSMoniker name="/HealthEndpointMonitoring.Cloud/HealthEndpointMonitoring.CloudGroup/HealthEndpointMonitoring.Web/StorageAccount" />
          </setting>
        </map>
        <map name="MapHealthEndpointMonitoring.Web:Test.ObscurePath" kind="Identity">
          <setting>
            <aCSMoniker name="/HealthEndpointMonitoring.Cloud/HealthEndpointMonitoring.CloudGroup/HealthEndpointMonitoring.Web/Test.ObscurePath" />
          </setting>
        </map>
        <map name="MapHealthEndpointMonitoring.Web:Test.ReturnStatusCode" kind="Identity">
          <setting>
            <aCSMoniker name="/HealthEndpointMonitoring.Cloud/HealthEndpointMonitoring.CloudGroup/HealthEndpointMonitoring.Web/Test.ReturnStatusCode" />
          </setting>
        </map>
        <map name="MapHealthEndpointMonitoring.WebInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/HealthEndpointMonitoring.Cloud/HealthEndpointMonitoring.CloudGroup/HealthEndpointMonitoring.WebInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="HealthEndpointMonitoring.Web" generation="1" functional="0" release="0" software="C:\projects\cloud-design-patterns\health-endpoint-monitoring\HealthEndpointMonitoring.Cloud\csx\Debug\roles\HealthEndpointMonitoring.Web" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="StorageAccount" defaultValue="" />
              <aCS name="Test.ObscurePath" defaultValue="" />
              <aCS name="Test.ReturnStatusCode" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;HealthEndpointMonitoring.Web&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;HealthEndpointMonitoring.Web&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/HealthEndpointMonitoring.Cloud/HealthEndpointMonitoring.CloudGroup/HealthEndpointMonitoring.WebInstances" />
            <sCSPolicyUpdateDomainMoniker name="/HealthEndpointMonitoring.Cloud/HealthEndpointMonitoring.CloudGroup/HealthEndpointMonitoring.WebUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/HealthEndpointMonitoring.Cloud/HealthEndpointMonitoring.CloudGroup/HealthEndpointMonitoring.WebFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="HealthEndpointMonitoring.WebUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="HealthEndpointMonitoring.WebFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="HealthEndpointMonitoring.WebInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="9d2194c6-b01d-4621-90f9-3f67d6b9eadd" ref="Microsoft.RedDog.Contract\ServiceContract\HealthEndpointMonitoring.CloudContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="1b28a7bb-c2af-4d8d-8d63-9da31a148660" ref="Microsoft.RedDog.Contract\Interface\HealthEndpointMonitoring.Web:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/HealthEndpointMonitoring.Cloud/HealthEndpointMonitoring.CloudGroup/HealthEndpointMonitoring.Web:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>