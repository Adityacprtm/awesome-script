vault {
  address = "http://127.0.0.1:8200"
  token = "s.QSEVlzR2Ae4DAgWEQcgXXXXX"
  unwrap_token = false
  renew_token = false

  retry {
    enabled = true
    attempts = 12
    backoff = "250ms"
    max_backoff = "1m"
  }

  ssl {
    enabled = false
  }
}
