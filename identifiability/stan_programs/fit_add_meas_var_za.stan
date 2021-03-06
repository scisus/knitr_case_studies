data {
  int<lower=1> N; // Number of observations
  real y[N];      // Observations
}

parameters {
  real a;
  real b;
  real<lower=0> sigma;
}

model {
  // Prior model
  a ~ normal(0, 1);
  b ~ normal(0, 1);
  sigma ~ inv_gamma(11.83, 5.32);
  
  // Observational model
  y ~ normal(a + b, sigma);
}
