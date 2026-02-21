class StackSync < Formula
  desc "A CLI tool for managing portainer stacks"
  homepage "https://github.com/kyeotic/stack-sync"
  version "0.3.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kyeotic/stack-sync/releases/download/v#{version}/stack-sync-aarch64-apple-darwin.tar.gz"
      sha256 "04a7b0fe5c74f0d96cb81f68b2ae0757227e885ab500837b3b30d3544c12e17c"
    else
      url "https://github.com/kyeotic/stack-sync/releases/download/v#{version}/stack-sync-x86_64-apple-darwin.tar.gz"
      sha256 "ba4bb6f269319b664fd17f86256388d22b7ac3bc390bc89b240538a21d64ec30"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kyeotic/stack-sync/releases/download/v#{version}/stack-sync-x86_64-unknown-linux-musl.tar.gz"
      sha256 "42d4ea36012ebfe5c6d41a92fe6b796a4f3bf6ac9dcba36ae2c8a904ed03748d"
    end
  end

  def install
    bin.install "stack-sync"
  end

  test do
    system "#{bin}/stack-sync --version"
  end
end