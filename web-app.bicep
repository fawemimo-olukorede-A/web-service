param location string

param appServicePlanId string 

resource webApplication 'Microsoft.Web/sites@2022-09-01' = {
  name: 'bicep-webapp-cb'
  location: location
  properties: {
    serverFarmId: 'appServicePlan.id'
  }
} 

