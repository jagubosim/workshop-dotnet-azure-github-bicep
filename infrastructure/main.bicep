 @allowed(['dev', 'prod'])
param environment string = 'dev'

targetScope = 'resourceGroup'

module appService './appservice.bicep' = {
   name: 'appservice'
   params: {
     appName: 'workshop-dnazghbicep-jagubosim-${environment}'
     location: 'centralus'
     environment: environment
   }
 }
