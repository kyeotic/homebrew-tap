class StackSync < Formula
  desc "A CLI tool for managing portainer stacks"
  homepage "https://github.com/kyeotic/stack-sync"
  version "0.4.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kyeotic/stack-sync/releases/download/v#{version}/stack-sync-aarch64-apple-darwin.tar.gz"
      sha256 "ae09f5ea5038698eb41eadb1162d2f8eca2034d6a924cd4f3daafae7669c01c9"
    else
      url "https://github.com/kyeotic/stack-sync/releases/download/v#{version}/stack-sync-x86_64-apple-darwin.tar.gz"
      sha256 "a1020d27fbc93963d783ce2712e78d4e8024ae7fe3bebffced399ecddc60454a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kyeotic/stack-sync/releases/download/v#{version}/stack-sync-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1bdef5925e10d7a64488b002866b83cc05e5653d748d31e1f208a0b5868437bf"
    end
  end

  def install
    bin.install "stack-sync"
  end

  test do
    system "#{bin}/stack-sync --version"
  end
end