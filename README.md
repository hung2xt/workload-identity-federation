gcloud iam service-accounts add-iam-policy-binding "github-actions@sawyer-work-1804.iam.gserviceaccount.com" \
  --project="sawyer-work-1804" \
  --role="roles/iam.workloadIdentityUser" \
  --member="principalSet://iam.googleapis.com/projects/737712162241/locations/global/workloadIdentityPools/githubactions/attribute.repository/hung2xt/workload-identity-federation"


https://cloud.google.com/blog/products/identity-security/enabling-keyless-authentication-from-github-actions

export PROJECT_ID=$(gcloud config get-value project)

gcloud iam workload-identity-pools create "github-pool-xn" \
  --project="sawyer-work-1804" \
  --location="global" \
  --display-name="Demo GIT"


gcloud iam workload-identity-pools providers create-oidc "github-provider" \
  --project="${PROJECT_ID}" \
  --location="global" \
  --workload-identity-pool="github-pool-xn" \
  --display-name="Demo provider" \
  --attribute-mapping="google.subject=assertion.sub,attribute.actor=assertion.actor,attribute.aud=assertion.aud" \
  --issuer-uri="https://token.actions.githubusercontent.com"


  gcloud iam service-accounts add-iam-policy-binding "terraform-gcp@sawyer-work-1804.iam.gserviceaccount.com" \
  --project="${PROJECT_ID}" \
  --role="roles/iam.workloadIdentityUser" \
  --member="principalSet://iam.googleapis.com/projects/737712162241/locations/global/workloadIdentityPools/github-pool-xn/attribute.repository/hung2xt/workload-identity-federation"