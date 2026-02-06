class VaultSync < Formula
  desc "A CLI tool for syncing secret files across devices"
  homepage "https://github.com/kyeotic/vault-sync"
  version "0.5.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kyeotic/vault-sync/releases/download/v#{version}/vault-sync-aarch64-apple-darwin.tar.gz"
      sha256 "695c2a5194893e60e3411be55886c1f232874718806b3a57c62ed2389f9581a4"
    else
      url "https://github.com/kyeotic/vault-sync/releases/download/v#{version}/vault-sync-x86_64-apple-darwin.tar.gz"
      sha256 "b986ed4fad60c4e1173fe5bc2e78787e8e6ec9f62f53660f01f848a9d5120e92"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kyeotic/vault-sync/releases/download/v#{version}/vault-sync-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3674decd685e8d4d355f1241c0bc85729292b58aef9f93b4fbd4d7127c7579fc"
    end
  end

  def install
    bin.install "vault-sync"
  end

  test do
    system "#{bin}/vault-sync --version"
  end
end