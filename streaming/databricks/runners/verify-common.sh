export DATABRICKS_NODETYPE=Standard_F4s
export DATABRICKS_WORKERS=2
export DATABRICKS_SPARKVERSION=${DATABRICKS_SPARKVERSION:-5.5.x-scala2.11}
export DATABRICKS_MAXEVENTSPERTRIGGER=10000

export DATABRICKS_TESTOUTPUTPATH=dbfs:/test-output/$(uuidgen)

#Databricks job timeout
export REPORT_THROUGHPUT_MINUTES=40

if [ -n "${ALLOW_DUPLICATES:-}" ]; then
  ALLOW_DUPLICATE_FRACTION=0.0011
else
  ALLOW_DUPLICATE_FRACTION=0
fi

ALLOW_OUTOFSEQUENCE_FRACTION=1.00
