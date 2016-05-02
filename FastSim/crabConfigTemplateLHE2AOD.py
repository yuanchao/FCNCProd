from WMCore.Configuration import Configuration
config = Configuration()
config.section_('General')
config.General.transferOutputs = True
config.section_('JobType')
config.JobType.psetName = 'prodLHEtoAOD_ST_TZ_3L.py'
config.JobType.pluginName = 'PrivateMC'
config.JobType.maxMemoryMB = 4000
config.section_('Data')
config.Data.totalUnits = 2500000
config.Data.unitsPerJob = 1000
config.Data.splitting = 'EventBased'
config.Data.publication = True
config.Data.outputPrimaryDataset = 'ST_TZ_3L'
config.Data.outputDatasetTag = 'VERSION'
config.Data.publishDBS = 'https://cmsweb.cern.ch/dbs/prod/phys03/DBSWriter'
config.Data.outLFNDirBase = 'OUTLFN'
config.section_('User')
config.section_('Site')
config.Site.storageSite = 'T2_FR_IPHC'
config.Site.whitelist = ['T2_FR_IPHC']
