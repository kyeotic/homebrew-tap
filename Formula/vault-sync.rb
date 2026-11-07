class VaultSync < Formula
  desc "A CLI tool for syncing secret files across devices"
  homepage "https://github.com/kyeotic/vault-sync"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kyeotic/vault-sync/releases/download/v#{version}/vault-sync-aarch64-apple-darwin.tar.gz"
      sha256 "c5284ee96bd46bdd0a722e330d82e48bd264daf6c5e01c22589ced508ea1f6b4"
    else
      url "https://github.com/kyeotic/vault-sync/releases/download/v#{version}/vault-sync-x86_64-apple-darwin.tar.gz"
      sha256 "047805bc7a3424cbeba3c5c8cde07024f50ff9013081e75c49da3cccbd72d879"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kyeotic/vault-sync/releases/download/v#{version}/vault-sync-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7e5dc35fb5499a4310d7c01ccfcd11df6f263848e9464f40ebba2b970a7e449a"
    end
  end

  def install
    bin.install "vault-sync"
  end

  test do
    system "#{bin}/vault-sync --version"
  end
end