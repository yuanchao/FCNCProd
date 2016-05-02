from WMCore.Configuration import Configuration
config = Configuration()
config.section_('General')
config.General.transferOutputs = True
config.General.requestName = 'REQUESTNAME'
config.section_('JobType')
config.JobType.psetName = 'prodAODtoMINIAOD.py'
config.JobType.maxMemoryMB = 4000
config.section_('Data')
config.Data.totalUnits = -1
config.Data.unitsPerJob = 5
config.Data.splitting = 'FileBased'
config.Data.publication = True
config.Data.inputDataset = 'INPUTDATASET'
config.Data.inputDBS = 'phys03'
config.Data.outputDatasetTag = 'PUBLISHDATANAME'
config.Data.publishDBS = 'https://cmsweb.cern.ch/dbs/prod/phys03/DBSWriter'
config.Data.outLFNDirBase = 'OUTLFN'
config.section_('User')
config.section_('Site')
config.Site.storageSite = 'T2_FR_IPHC'
config.Site.whitelist = ['T2_FR_IPHC']
