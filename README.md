gcloud iam service-accounts add-iam-policy-binding "github-actions@sawyer-work-1804.iam.gserviceaccount.com" \
  --project="sawyer-work-1804" \
  --role="roles/iam.workloadIdentityUser" \
  --member="principalSet://iam.googleapis.com/projects/737712162241/locations/global/workloadIdentityPools/githubactions/attribute.repository/hung2xt/workload-identity-federation"