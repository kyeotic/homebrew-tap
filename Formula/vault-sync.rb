class VaultSync < Formula
  desc "A CLI tool for syncing secret files across devices"
  homepage "https://github.com/kyeotic/vault-sync"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kyeotic/vault-sync/releases/download/v#{version}/vault-sync-aarch64-apple-darwin.tar.gz"
      sha256 "ec166d31bbc21190f3accd8ebd7ac4b53766eabfbccd5f00a1c65867fdf7f520"
    else
      url "https://github.com/kyeotic/vault-sync/releases/download/v#{version}/vault-sync-x86_64-apple-darwin.tar.gz"
      sha256 "1f6370e12b672564fdecc9adf664bbe860c80eccb5fd39ed2a3518703e56a1bb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kyeotic/vault-sync/releases/download/v#{version}/vault-sync-x86_64-unknown-linux-musl.tar.gz"
      sha256 "133ed73be0c5f0e7f183121fb8bf9190413a98d8d054739fc2714029e7d98418"
    end
  end

  def install
    bin.install "vault-sync"
  end

  test do
    system "#{bin}/vault-sync --version"
  end
end