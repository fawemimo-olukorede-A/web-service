param location string  = deployment().location
targetScope = 'subscription'

 

resource resourceGroup 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'bicep-rg-cb'
  location: location
}


module appServicePlan './app-service-plan.bicep' = {
  scope: resourceGroup
  name:'bicep-app-plan-cb'
  params: {
    location: resourceGroup.location
  }
}


module appService './web-app.bicep' = {
  scope: resourceGroup
  name:'bicep-webapp-cb'
  params: {
    location: resourceGroup.location
    
    appServicePlanId: appServicePlan.outputs.appservicePlanId
  }
}
 