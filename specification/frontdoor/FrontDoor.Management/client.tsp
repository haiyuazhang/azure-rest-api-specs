import "./main.tsp";
import "@azure-tools/typespec-client-generator-core";

using Azure.ClientGenerator.Core;
using Microsoft.Network;
using TypeSpec.Http;
using Azure.ResourceManager;
using TypeSpec.Rest;

@@clientName(Microsoft.Network,
  "FrontDoorManagementClient",
  "python, javascript"
);
@@clientName(MinimumTLSVersion.`1.0`, "ONE0", "python");
@@clientName(MinimumTLSVersion.`1.2`, "ONE2", "python");
@@clientName(MinimumTLSVersion.`1.0`, "One0", "javascript");
@@clientName(MinimumTLSVersion.`1.2`, "One2", "javascript");

@@clientName(MinimumTLSVersion, "MinimumTlsVersion", "java");
@@clientName(ValidateCustomDomainInput.hostName, "hostname", "java");
@@clientName(FrontendEndpointUpdateParameters.hostName, "hostname", "java");
@@clientName(FrontendEndpointProperties.hostName, "hostname", "java");
@@clientName(LatencyMetric.endDateTimeUTC, "endDateTimeUtc", "java");
@@clientName(LatencyScorecardProperties.startDateTimeUTC,
  "startDateTimeUtc",
  "java"
);
@@clientName(LatencyScorecardProperties.endDateTimeUTC,
  "endDateTimeUtc",
  "java"
);
@@clientName(TimeseriesProperties.startDateTimeUTC, "startDateTimeUtc", "java");
@@clientName(TimeseriesProperties.endDateTimeUTC, "endDateTimeUtc", "java");
@@clientName(TimeseriesDataPoint.dateTimeUTC, "dateTimeUtc", "java");

@@clientName(GetLatencyScorecardsParameters.endDateTimeUTC,
  "endDateTimeUtc",
  "java"
);
@@clientName(GetTimeseriesParameters.startDateTimeUTC,
  "startDateTimeUtc",
  "java"
);
@@clientName(GetTimeseriesParameters.endDateTimeUTC, "endDateTimeUtc", "java");

@@clientName(MinimumTLSVersion.`1.0`, "One0", "go");
@@clientName(MinimumTLSVersion.`1.2`, "One2", "go");

/**
 * added for override of Profiles.createOrUpdate
 */
@armResourceOperations
interface ProfilesOverrides {
  /**
   * override for Profiles.createOrUpdate
   */
  #suppress "@azure-tools/typespec-azure-core/no-openapi" "FIXME: Update justification, follow aka.ms/tsp/conversion-fix for details"
  #suppress "@azure-tools/typespec-azure-resource-manager/arm-put-operation-response-codes" "FIXME: Update justification, follow aka.ms/tsp/conversion-fix for details"
  #suppress "@azure-tools/typespec-azure-resource-manager/no-response-body" "FIXME: Update justification, follow aka.ms/tsp/conversion-fix for details"
  replaceCreateOrUpdate(
    ...Azure.ResourceManager.ProviderNamespace<Profile>,
    ...ApiVersionParameter,
    ...SubscriptionIdParameter,
    #suppress "@azure-tools/typespec-azure-core/documentation-required" "FIXME: Update justification, follow aka.ms/tsp/conversion-fix for details"
    profileName: string,
    ...ResourceGroupParameter,
    #suppress "@azure-tools/typespec-azure-core/documentation-required" "FIXME: Update justification, follow aka.ms/tsp/conversion-fix for details"
    parameters: Microsoft.Network.Profile,
  ): ArmResourceUpdatedResponse<Profile> | ArmResourceCreatedResponse<
    Profile,
    ArmLroLocationHeader<FinalResult = Profile> &
      Azure.Core.Foundations.RetryAfterHeader
  > | (ArmAcceptedLroResponse & {
    @bodyRoot
    _: Profile;
  });
}
@@override(Profiles.createOrUpdate,
  ProfilesOverrides.replaceCreateOrUpdate,
  "go,javascript"
);

@@clientName(Experiment, "FrontDoorExperiment", "csharp");
@@clientName(State, "FrontDoorExperimentState", "csharp");
@@clientName(Endpoint, "FrontDoorExperimentEndpointProperties", "csharp");
@@clientName(Timeseries, "FrontDoorTimeSeriesInfo", "csharp");
@@clientName(WebApplicationFirewallPolicy, "FrontDoorWebApplicationFirewallPolicy", "csharp");
@@clientName(HealthProbeSettingsModel, "FrontDoorHealthProbeSettingsData", "csharp");
@@clientName(LoadBalancingSettingsModel, "FrontDoorLoadBalancingSettingsData", "csharp");
@@clientName(RoutingRule, "RoutingRuleData", "csharp");
@@clientName(PurgeParameters, "FrontDoorEndpointPurgeContent", "csharp");
@@clientName(ValidateCustomDomainInput, "FrontDoorValidateCustomDomainContent", "csharp");
@@clientName(ValidateCustomDomainOutput, "FrontDoorValidateCustomDomainResult", "csharp");
@@clientName(CustomHttpsProvisioningState, "FrontendEndpointCustomHttpsProvisioningState", "csharp");
@@clientName(CustomHttpsProvisioningSubstate, "FrontendEndpointCustomHttpsProvisioningSubstate", "csharp");
@@clientName(Profile, "FrontDoorNetworkExperimentProfile", "csharp");
@@clientName(ProfileUpdateModel, "FrontDoorNetworkExperimentProfilePatch", "csharp");
@@clientName(RulesEngine, "FrontDoorRulesEngine", "csharp");
@@clientName(PolicySettings, "FrontDoorWebApplicationFirewallPolicySettings", "csharp");
@@clientName(PolicyResourceState, "FrontDoorWebApplicationFirewallPolicyResourceState", "csharp");
@@clientName(CustomRule, "WebApplicationCustomRule", "csharp");
@@clientName(CheckNameAvailabilityInput, "FrontDoorNameAvailabilityContent", "csharp");
@@clientName(CheckNameAvailabilityOutput, "FrontDoorNameAvailabilityResult", "csharp");
@@clientName(ActionType, "RuleMatchActionType", "csharp");
@@clientName(Availability, "FrontDoorNameAvailabilityState", "csharp");
@@clientName(Backend, "FrontDoorBackend", "csharp");
@@clientName(PrivateEndpointStatus, "BackendPrivateEndpointStatus", "csharp");
@@clientName(BackendPool, "FrontDoorBackendPool", "csharp");
@@clientName(FrontDoorCertificateType, "FrontDoorEndpointConnectionCertificateType", "csharp");
@@clientName(MatchCondition, "WebApplicationRuleMatchCondition", "csharp");
@@clientName(MatchVariable, "WebApplicationRuleMatchVariable", "csharp");
@@clientName(Operator, "WebApplicationRuleMatchOperator", "csharp");
@@clientName(TransformType, "WebApplicationRuleMatchTransformType", "csharp");
@@clientName(RuleType, "WebApplicationRuleType", "csharp");
@@clientName(HeaderAction, "RulesEngineHeaderAction", "csharp");
@@clientName(HeaderActionType, "RulesEngineHeaderActionType", "csharp");
@@clientName(Transform, "RulesEngineMatchTransform", "csharp");
@@clientName(PolicyMode, "FrontDoorWebApplicationFirewallPolicyMode", "csharp");
@@clientName(ResourceType, "FrontDoorResourceType", "csharp");
@@clientName(MinimumTLSVersion, "FrontDoorRequiredMinimumTlsVersion", "csharp");
@@clientName(AggregationInterval, "FrontDoorTimeSeriesInfoAggregationInterval", "csharp");
@@clientName(TimeseriesAggregationInterval, "FrontDoorTimeSeriesAggregationInterval", "csharp");
@@clientName(CacheConfiguration, "FrontDoorCacheConfiguration", "csharp");
@@clientName(EndpointType, "FrontDoorEndpointType", "csharp");
@@clientName(TimeseriesDataPoint, "FrontDoorTimeSeriesDataPoint", "csharp");
@@clientName(TimeseriesType, "FrontDoorTimeSeriesType", "csharp");
@@clientName(VariableName, "FrontDoorWebApplicationFirewallPolicyGroupByVariableName", "csharp");
@@clientName(GroupByVariable, "FrontDoorWebApplicationFirewallPolicyGroupByVariable", "csharp");
@@clientName(ExperimentProperties.endpointA, "ExperimentEndpointA", "csharp");
@@clientName(ExperimentProperties.endpointB, "ExperimentEndpointB", "csharp");
@@clientName(TimeseriesProperties.startDateTimeUTC, "StartOn", "csharp");
@@clientName(TimeseriesProperties.endDateTimeUTC, "EndOn", "csharp");
@@clientName(WebApplicationFirewallPolicyProperties.customRules, "CustomRuleList", "csharp");
@@clientName(ValidateCustomDomainOutput.customDomainValidated, "IsCustomDomainValidated", "csharp");
@@clientName(BackendPoolsSettings.sendRecvTimeoutSeconds, "SendRecvTimeoutInSeconds", "csharp");
@@clientName(MatchCondition.negateCondition, "IsNegateCondition", "csharp");
@@clientName(LatencyScorecardProperties.id, "LatencyScorecardId", "csharp");
@@clientName(LatencyScorecardProperties.name, "LatencyScorecardName", "csharp");
@@clientName(LatencyScorecardProperties.endpointA, "ScorecardEndpointA", "csharp");
@@clientName(LatencyScorecardProperties.endpointB, "ScorecardEndpointB", "csharp");
@@clientName(LatencyScorecardProperties.startDateTimeUTC, "StartOn", "csharp");
@@clientName(LatencyScorecardProperties.endDateTimeUTC, "EndOn", "csharp");
@@clientName(RulesEngineMatchCondition.negateCondition, "IsNegateCondition", "csharp");
@@clientName(LatencyMetric.endDateTimeUTC, "EndOn", "csharp");
@@clientName(CustomHttpsProvisioningSubstate.PendingDomainControlValidationREquestApproval, "PendingDomainControlValidationRequestApproval", "csharp");
@@clientName(Operator.RegEx, "RegEX", "csharp");
@@clientName(TransformType.UrlDecode, "UriDecode", "csharp");
@@clientName(TransformType.UrlEncode, "UriEncode", "csharp");
@@clientName(FrontDoorHealthProbeMethod.GET, "Get", "csharp");
@@clientName(Transform.UrlDecode, "UriDecode", "csharp");
@@clientName(Transform.UrlEncode, "UriEncode", "csharp");
@@clientName(EndpointType.AFD, "AzureFrontDoor", "csharp");
@@clientName(EndpointType.ATM, "AzureTrafficManager", "csharp");
@@alternateType(TimeseriesProperties.endpoint, url, "csharp");
@@alternateType(Backend.privateLinkResourceId, Azure.Core.armResourceIdentifier, "csharp");
@@alternateType(Backend.privateLinkLocation, Azure.Core.azureLocation, "csharp");
@@alternateType(LatencyScorecardProperties.endpointA, url, "csharp");
@@alternateType(LatencyScorecardProperties.endpointB, url, "csharp");
@@clientName(FrontDoors.purgeContent, "PurgeContent", "csharp");
@@clientName(FrontDoorNameAvailabilityWithSubscriptionOperationGroup.check, "CheckFrontDoorNameAvailability", "csharp");
@@alternateType(ExperimentProperties.scriptFileUri, url, "csharp");
@@clientName(TimeseriesProperties.timeseriesType, "TimeSeriesType", "csharp");
@@clientName(TimeseriesProperties.timeseriesData, "TimeSeriesData", "csharp");
@@clientName(TimeseriesDataPoint.dateTimeUTC, "DateTimeUtc", "csharp");
