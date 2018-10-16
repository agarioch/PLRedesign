op <- subset(AfricaPL, R.Level.Account.Code == "AC_R900000003")
op <- op[, !(grepl("Account.Code|Account.Desc|ES_SEGMNT", names(op)))]
aggregate.metrics <- names(op)[unlist(lapply(op, is.numeric))]
aggregate(cbind(Actuals.Local.Currency, Actuals.Local.Currency...PY, Actuals.MOR,                
                Actuals.MOR...PY, Actuals.OPFX, Actuals.OPFX...PY,
                Actuals.Local.Currency...PQ, Actuals.MOR...PQ, Actuals.OPFX...PQ,
                Actuals.Adjusted...PQ, Local_Currency_YTD_AMT_CY, Local_Currency_YTD_AMT_PY,  
                MOR_YTD_AMT_CY, MOR_YTD_AMT_PY, ActualsAdjusted,
                ActualsAdjusted.PY, ActualUSD_YTD_AMT_CY, ActualUSD_YTD_AMT_PY,
                OPFX_YTD_AMT_CY, OPFX_YTD_AMT_PY, OP.Amt, op.profit)~.,op,sum)