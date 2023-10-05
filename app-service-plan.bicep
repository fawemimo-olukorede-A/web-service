param location string

resource appServicePlan 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: 'bicep-app-plan'
  location: location
  sku: {
    name: 'F1'
    capacity: 1
  }
}

output appservicePlanId string = appServicePlan.id
