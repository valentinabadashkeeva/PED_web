setwd('/home/owc/BILAN_UPOV/used_data/webapp_data/mbilan/')

r = readRDS('bilan_month - puvodni.rds')

r = r[year %in% c(2000:2015) & variable %in% c('P', 'T', 'RM'), .(DTM, UPOV_ID, variable, value)]

cr = dcast.data.table(r, UPOV_ID + DTM ~ variable)
cr = cr[complete.cases(P, RM, T), ]
cr = cr[!UPOV_ID %in% cr[, all(P==0), by = UPOV_ID][V1==TRUE, UPOV_ID]]

setwd('/home/hanel/PED/PED_web/data/')
saveRDS(cr, 'bilance.rds')
