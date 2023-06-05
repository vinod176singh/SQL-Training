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
    laad_data.ipf_universe where patient_id ='10007125607'
) AS subquery
order by 1,2;

SELECT
  patient_id,
  svc_dt,
  mkted_prod_nm,
  dense_rank() OVER (PARTITION BY patient_id,mkted_prod_nm ORDER BY grp) AS episodes
FROM (
  SELECT
    patient_id,
    svc_dt,
    mkted_prod_nm,
    ROW_NUMBER() OVER (PARTITION BY patient_id ORDER BY svc_dt) - ROW_NUMBER() OVER (PARTITION BY patient_id, mkted_prod_nm ORDER BY svc_dt) AS grp
  FROM
    laad_data.ipf_universe where patient_id ='10007125607'
) AS subquery
ORDER BY 1, 2;
