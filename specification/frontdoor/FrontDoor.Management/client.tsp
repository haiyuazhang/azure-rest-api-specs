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
@@clientName(WebApplicationFirewallPolicy, "FrontDoorWebApplicationFirewallPolicy", "csharp");
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
@@clientName(ManagedRuleExclusionSelectorMatchOperator.Equals, "EqualsValue", "csharp");
@@clientName(ScrubbingRuleEntryMatchOperator.Equals, "EqualsValue", "csharp");
@@clientName(WebApplicationFirewallPolicyProperties.customRules, "CustomRuleList", "csharp");

// Fix 5: ResourceIdentifier property types (arm-id SubResource references)
@@alternateType(KeyVaultCertificateSourceParametersVault.id, Azure.Core.armResourceIdentifier, "csharp");
@@alternateType(ForwardingConfiguration.backendPool, Azure.Core.armResourceIdentifier, "csharp");
@@alternateType(BackendPoolUpdateParameters.healthProbeSettings, Azure.Core.armResourceIdentifier, "csharp");
@@alternateType(BackendPoolUpdateParameters.loadBalancingSettings, Azure.Core.armResourceIdentifier, "csharp");
@@alternateType(RoutingRuleUpdateParametersWebApplicationFirewallPolicyLink.id, Azure.Core.armResourceIdentifier, "csharp");

// Fix 6: DateTimeOffset property types (string → utcDateTime)
@@alternateType(TimeseriesDataPoint.dateTimeUTC, utcDateTime, "csharp");
@@alternateType(TimeseriesProperties.startDateTimeUTC, utcDateTime, "csharp");
@@alternateType(TimeseriesProperties.endDateTimeUTC, utcDateTime, "csharp");
@@alternateType(LatencyMetric.endDateTimeUTC, utcDateTime, "csharp");

@@alternateType(FrontDoor, FrontDoorReplacement, "csharp");
@@clientName(FrontDoor, "FrontDoorTemp", "csharp");
@@clientName(FrontDoorReplacement, "FrontDoor", "csharp");

@@alternateType(Experiment, ExperimentReplacement, "csharp");
@@clientName(Experiment, "ExperimentTemp", "csharp");
@@clientName(ExperimentReplacement, "FrontDoorExperiment", "csharp");

@@alternateType(Profile, ProfileReplacement, "csharp");
@@clientName(Profile, "ProfileTemp", "csharp");
@@clientName(ProfileReplacement, "FrontDoorNetworkExperimentProfile", "csharp");

@@alternateType(WebApplicationFirewallPolicy, WebApplicationFirewallPolicyReplacement, "csharp");
@@clientName(WebApplicationFirewallPolicy, "WebApplicationFirewallPolicyTemp", "csharp");
@@clientName(WebApplicationFirewallPolicyReplacement, "FrontDoorWebApplicationFirewallPolicy", "csharp");

@@clientName(Microsoft.Network.Resource, "FrontDoorResourceModel", "csharp");

@@alternateType(RulesEngine, RulesEngineReplacement, "csharp");
@@clientName(RulesEngine, "RulesEngineTemp", "csharp");
@@clientName(RulesEngineReplacement, "FrontDoorRulesEngine", "csharp");

@@alternateType(FrontendEndpoint, FrontendEndpointReplacement, "csharp");
@@clientName(FrontendEndpoint, "FrontendEndpointTemp", "csharp");
@@clientName(FrontendEndpointReplacement, "FrontendEndpoint", "csharp");

@@alternateType(Azure.ResourceManager.CommonTypes.Resource.id, Azure.Core.armResourceIdentifier, "csharp");

// Flatten properties on replacement models (back-compat.tsp targets originals, not replacements)
#suppress "@azure-tools/typespec-azure-core/no-legacy-usage" "migration: restore flattened properties on replacement models"
@@Azure.ClientGenerator.Core.Legacy.flattenProperty(FrontDoorReplacement.properties, "csharp");
#suppress "@azure-tools/typespec-azure-core/no-legacy-usage" "migration: restore flattened properties on replacement models"
@@Azure.ClientGenerator.Core.Legacy.flattenProperty(ExperimentReplacement.properties, "csharp");
#suppress "@azure-tools/typespec-azure-core/no-legacy-usage" "migration: restore flattened properties on replacement models"
@@Azure.ClientGenerator.Core.Legacy.flattenProperty(ProfileReplacement.properties, "csharp");
#suppress "@azure-tools/typespec-azure-core/no-legacy-usage" "migration: restore flattened properties on replacement models"
@@Azure.ClientGenerator.Core.Legacy.flattenProperty(WebApplicationFirewallPolicyReplacement.properties, "csharp");
#suppress "@azure-tools/typespec-azure-core/no-legacy-usage" "migration: restore flattened properties on replacement models"
@@Azure.ClientGenerator.Core.Legacy.flattenProperty(RulesEngineReplacement.properties, "csharp");
#suppress "@azure-tools/typespec-azure-core/no-legacy-usage" "migration: restore flattened properties on replacement models"
@@Azure.ClientGenerator.Core.Legacy.flattenProperty(FrontendEndpointReplacement.properties, "csharp");
#suppress "@azure-tools/typespec-azure-core/no-legacy-usage" "migration: restore flattened properties on replacement models"
@@Azure.ClientGenerator.Core.Legacy.flattenProperty(RoutingRule.properties, "csharp");
#suppress "@azure-tools/typespec-azure-core/no-legacy-usage" "migration: restore flattened properties on replacement models"
@@Azure.ClientGenerator.Core.Legacy.flattenProperty(RoutingRuleUpdateParameters.rulesEngine, "csharp");

// Response-only type replacements: restore TrackedResourceData base
@@alternateType(Timeseries, TimeseriesReplacement, "csharp");
@@clientName(Timeseries, "TimeseriesTemp", "csharp");
@@clientName(TimeseriesReplacement, "FrontDoorTimeSeriesInfo", "csharp");
#suppress "@azure-tools/typespec-azure-core/no-legacy-usage" "migration: restore flattened properties on replacement models"
@@Azure.ClientGenerator.Core.Legacy.flattenProperty(TimeseriesReplacement.properties);

@@alternateType(LatencyScorecard, LatencyScorecardReplacement, "csharp");
@@clientName(LatencyScorecard, "LatencyScorecardTemp", "csharp");
@@clientName(LatencyScorecardReplacement, "LatencyScorecard", "csharp");
#suppress "@azure-tools/typespec-azure-core/no-legacy-usage" "migration: restore flattened properties on replacement models"
@@Azure.ClientGenerator.Core.Legacy.flattenProperty(LatencyScorecardReplacement.properties);

@@alternateType(ManagedRuleSetDefinition, ManagedRuleSetDefinitionReplacement, "csharp");
@@clientName(ManagedRuleSetDefinition, "ManagedRuleSetDefinitionTemp", "csharp");
@@clientName(ManagedRuleSetDefinitionReplacement, "ManagedRuleSetDefinition", "csharp");
#suppress "@azure-tools/typespec-azure-core/no-legacy-usage" "migration: restore flattened properties on replacement models"
@@Azure.ClientGenerator.Core.Legacy.flattenProperty(ManagedRuleSetDefinitionReplacement.properties);

@@alternateType(PreconfiguredEndpoint, PreconfiguredEndpointReplacement, "csharp");
@@clientName(PreconfiguredEndpoint, "PreconfiguredEndpointTemp", "csharp");
@@clientName(PreconfiguredEndpointReplacement, "PreconfiguredEndpoint", "csharp");
#suppress "@azure-tools/typespec-azure-core/no-legacy-usage" "migration: restore flattened properties on replacement models"
@@Azure.ClientGenerator.Core.Legacy.flattenProperty(PreconfiguredEndpointReplacement.properties);

@@clientName(ForwardingConfiguration.backendPool, "BackendPoolId", "csharp");
@@clientName(BackendPoolUpdateParameters.healthProbeSettings, "HealthProbeSettingsId", "csharp");
@@clientName(BackendPoolUpdateParameters.loadBalancingSettings, "LoadBalancingSettingsId", "csharp");

// Fix 8: Enum member name casing (TypeSpec ALL_CAPS → baseline PascalCase)
@@clientName(EndpointType.CDN, "Cdn", "csharp");
@@clientName(FrontDoorHealthProbeMethod.HEAD, "Head", "csharp");
@@clientName(MinimumTLSVersion.`1.0`, "Tls1_0", "csharp");
@@clientName(MinimumTLSVersion.`1.2`, "Tls1_2", "csharp");
@@clientName(ActionType.CAPTCHA, "Captcha", "csharp");

// Fix 9: Property renames to match baseline
@@clientName(CheckNameAvailabilityInput.type, "ResourceType", "csharp");
@@clientName(FrontendEndpointUpdateParameters.sessionAffinityTtlSeconds, "SessionAffinityTtlInSeconds", "csharp");

// Fix 10: ETag type (string → Azure.ETag)
@@alternateType(ProfileReplacement.etag, Azure.Core.eTag, "csharp");
@@alternateType(WebApplicationFirewallPolicyReplacement.etag, Azure.Core.eTag, "csharp");

// Fix 11: Uri type for RedirectUrl (string → System.Uri)
@@alternateType(PolicySettings.redirectUrl, url, "csharp");

// Fix 12: Operation renames (Reports operations on Experiment resource)
@@clientName(Experiments.getTimeseries, "GetTimeSeriesReport", "csharp");
@@clientName(Experiments.getLatencyScorecards, "GetLatencyScorecardsReport", "csharp");

// Fix 12b: Operation parameter renames and type fixes
@@clientName(GetTimeseriesParameters.startDateTimeUTC, "startOn", "csharp");
@@clientName(GetTimeseriesParameters.endDateTimeUTC, "endOn", "csharp");
@@clientName(GetTimeseriesParameters.timeseriesType, "timeSeriesType", "csharp");
@@clientName(GetLatencyScorecardsParameters.endDateTimeUTC, "endOn", "csharp");
@@alternateType(GetLatencyScorecardsParameters.endDateTimeUTC, utcDateTime, "csharp");

// Fix 13: PreconfiguredEndpoints list operation rename
@@clientName(Profiles.preconfiguredEndpointsList, "GetPreconfiguredEndpoints", "csharp");

@@usage(TimeseriesReplacement, Usage.input | Usage.output);
@@usage(LatencyScorecardReplacement, Usage.input | Usage.output);
@@usage(ManagedRuleSetDefinitionReplacement, Usage.input | Usage.output);
@@usage(PreconfiguredEndpointReplacement, Usage.input | Usage.output);
@@usage(TimeseriesDataPoint, Usage.input | Usage.output);
@@usage(LatencyMetric, Usage.input | Usage.output);
@@usage(RouteConfiguration, Usage.input | Usage.output);

@@alternateType(SubResource, SubResourceReplacement, "csharp");
@@clientName(SubResource, "SubResourceTemp", "csharp");
@@clientName(SubResourceReplacement, "FrontDoorResourceData", "csharp");
@@alternateType(SubResourceReplacement.id, Azure.Core.armResourceIdentifier, "csharp");
@@usage(SubResourceReplacement, Usage.input | Usage.output);
@@usage(ManagedRuleGroupDefinition, Usage.input | Usage.output);
@@usage(ManagedRuleDefinition, Usage.input | Usage.output);


// we add this model in this namespace in order to replace some models with this model via alternateType decorator
namespace Azure.ResourceManager.Models {
  /** represents a reference to an existing resource by its id */
  model SubResource {
    /** the id */
    id?: Azure.Core.armResourceIdentifier;
  }
}
namespace Azure.ResourceManager.Models {
  /** represents a reference to an existing resource by its id */
  model WritableSubResource {
    /** the id */
    id?: Azure.Core.armResourceIdentifier;
  }
}
@@alternateType(FrontendEndpointUpdateParametersWebApplicationFirewallPolicyLink, Azure.ResourceManager.Models.WritableSubResource, "csharp");
@@alternateType(RoutingRuleUpdateParameters.rulesEngine, Azure.ResourceManager.Models.WritableSubResource, "csharp");


@@alternateType(FrontendEndpointLink, Azure.ResourceManager.Models.SubResource, "csharp");
@@alternateType(RoutingRuleLink, Azure.ResourceManager.Models.SubResource, "csharp");
@@alternateType(SecurityPolicyLink, Azure.ResourceManager.Models.SubResource, "csharp");


@@clientName(ManagedRuleSetsOperationGroup.list, "GetManagedRuleSets", "csharp");


@@clientName(RoutingRule, "RoutingRuleTemp", "csharp");

@@alternateType(RoutingRule, RoutingRuleReplacement, "csharp");
@@clientName(RoutingRuleReplacement, "RoutingRuleData", "csharp");


@@clientName(LoadBalancingSettingsModel, "LoadBalancingSettingsModelTemp", "csharp");
@@alternateType(LoadBalancingSettingsModel, LoadBalancingSettingsModelReplacement, "csharp");
@@clientName(LoadBalancingSettingsModelReplacement, "FrontDoorLoadBalancingSettingsData", "csharp");

@@clientName(HealthProbeSettingsModel, "HealthProbeSettingsModelTemp", "csharp");
@@alternateType(HealthProbeSettingsModel, HealthProbeSettingsModelReplacement, "csharp");
@@clientName(HealthProbeSettingsModelReplacement, "FrontDoorHealthProbeSettingsData", "csharp");

@@clientName(BackendPool, "BackendPoolTemp", "csharp");
@@alternateType(BackendPool, BackendPoolReplacement, "csharp");
@@clientName(BackendPoolReplacement, "FrontDoorBackendPool", "csharp");
