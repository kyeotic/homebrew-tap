class VaultSync < Formula
  desc "A CLI tool for syncing secret files across devices"
  homepage "https://github.com/kyeotic/vault-sync"
  version "0.5.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kyeotic/vault-sync/releases/download/v#{version}/vault-sync-aarch64-apple-darwin.tar.gz"
      sha256 "8890dba25f4c5bbc8a7ea3cce9bf232d49e1f7896402c23b669a04d8ad0381e7"
    else
      url "https://github.com/kyeotic/vault-sync/releases/download/v#{version}/vault-sync-x86_64-apple-darwin.tar.gz"
      sha256 "d41a9b31ae5d9fa750c7dde7bdabd38d490895424b5b5a17e101f4e3b77db1af"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kyeotic/vault-sync/releases/download/v#{version}/vault-sync-x86_64-unknown-linux-musl.tar.gz"
      sha256 "360f77154a4d94f9227c4f194c3c19bdb325340f73a2f1f73172c3e95d06e9e7"
    end
  end

  def install
    bin.install "vault-sync"
  end

  test do
    system "#{bin}/vault-sync --version"
  end
end