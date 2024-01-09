locals {

  files = ["ips.json", "report.csv", "sitemap.xml"]

  file_extensions = [for file in local.files : regex("\\.[0-9a-z]+$", file)]

  file_extensions_upper = { for f in local.file_extensions : f => upper(f) if f != ".json" }

  ips = [

    {
      "public" : "127.0.0.0",
      "private" : "255.255.255.0"
    },
    {
      "public" : "127.0.0.1",
      "private" : "255.255.255.1"
    }
  ]

}