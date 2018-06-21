SELECT ca.proj_id AS proj_id,
       ca.ca_name AS proj_name,
       ca.ca_date_start AS proj_start,
       ca.ca_date_end AS proj_end,

  (SELECT COUNT(*)
   FROM rotations r
   WHERE r.proj_id = proj_id
     AND r.r_status = 'R'
   GROUP BY r.proj_id) r_count,

  (SELECT count(*)
   FROM rotations r
   WHERE r.proj_id = proj_id
     AND r.channel_id = 24 ) r_rtb_count
FROM projs ca,
     clients c,
     proj_auth caa
WHERE ca.client_id = 12345
  AND ca.client_id = c.client_id
  AND ca_type = 'zzz'
  AND c.agency_id = 0
  AND ca.client_id = NVL(caa.client_id, ca.client_id)
  AND proj_id = NVL(caa.proj_id, proj_id)
  AND caa.contact_id = 7890