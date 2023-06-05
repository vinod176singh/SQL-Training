SELECT
  patient_id,
  svc_dt,
  mkted_prod_nm,
  SUM(CASE WHEN mkted_prod_nm = prev_mkted_prod_nm THEN 0 ELSE 1 END) OVER (partition by patient_id ORDER BY svc_dt ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS lot
FROM (
  SELECT
    patient_id,
    mkted_prod_nm,
    svc_dt,
    LAG(mkted_prod_nm) OVER (partition by patient_id ORDER BY svc_dt) AS prev_mkted_prod_nm
  FROM
    laad_data.ipf_universe
) AS subquery
order by 1,2;

SELECT
  patient_id,
  svc_dt,
  mkted_prod_nm,
  SUM(CASE WHEN drug_change = 1 THEN 1 ELSE 0 END) OVER (PARTITION BY patient_id ORDER BY svc_dt ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS Episodes
FROM (
  SELECT
    patient_id,
    mkted_prod_nm,
    svc_dt,
    CASE WHEN mkted_prod_nm != LAG(mkted_prod_nm) OVER (PARTITION BY patient_id ORDER BY patient_id) THEN 1 ELSE 0 END AS drug_change
  FROM
    laad_data.ipf_universe
) AS subquery
order by 1,2;
