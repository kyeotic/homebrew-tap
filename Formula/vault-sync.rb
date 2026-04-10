class VaultSync < Formula
  desc "A CLI tool for syncing secret files across devices"
  homepage "https://github.com/kyeotic/vault-sync"
  version "0.6.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kyeotic/vault-sync/releases/download/v#{version}/vault-sync-aarch64-apple-darwin.tar.gz"
      sha256 "bec8596e5a53aafe62eb77e1f20b8cc092be10eaa670090a0a663f940f2fb7eb"
    else
      url "https://github.com/kyeotic/vault-sync/releases/download/v#{version}/vault-sync-x86_64-apple-darwin.tar.gz"
      sha256 "1612f2b04884b691610ddb70178e91168a440e9bf891584c1e20e07c3e349566"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kyeotic/vault-sync/releases/download/v#{version}/vault-sync-x86_64-unknown-linux-musl.tar.gz"
      sha256 "354e4c4eb7fa429af12fa64a1ec82d2278fc597506045bb6b493a856294e5641"
    end
  end

  def install
    bin.install "vault-sync"
  end

  test do
    system "#{bin}/vault-sync --version"
  end
end