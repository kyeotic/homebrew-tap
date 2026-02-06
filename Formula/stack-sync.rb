class StackSync < Formula
  desc "A CLI tool for managing portainer stacks"
  homepage "https://github.com/kyeotic/stack-sync"
  version "0.3.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kyeotic/stack-sync/releases/download/v#{version}/stack-sync-aarch64-apple-darwin.tar.gz"
      sha256 "ac5fe47877dc97823bff5644f16894bb1da4427ca77d4b43fba64d12b651c6ef"
    else
      url "https://github.com/kyeotic/stack-sync/releases/download/v#{version}/stack-sync-x86_64-apple-darwin.tar.gz"
      sha256 "19f5683f7b2024c206637610f01ab2016beb7e0d97525053daba2d6d008dd8d6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kyeotic/stack-sync/releases/download/v#{version}/stack-sync-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f14737fbc1a68f9143df50d1eba82dab7b782a366ccd999487bee2b1dc957540"
    end
  end

  def install
    bin.install "stack-sync"
  end

  test do
    system "#{bin}/stack-sync --version"
  end
end