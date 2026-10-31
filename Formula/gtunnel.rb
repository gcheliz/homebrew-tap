class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.20/gtunnel-macos-arm64-v0.3.20.tar.gz"
      sha256 "475b09d5a861175f34f3dbb5402d8d38310b89903ca39144b2994caddecb5961"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.20/gtunnel-macos-intel-v0.3.20.tar.gz"
      sha256 "6c3115a204463a429fe1d31b0720439b3732812c27044b36a1f9ecfeb694722f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.20/gtunnel-linux-arm64-v0.3.20.tar.gz"
      sha256 "197b7756e645b041b417c058a40bc38555e97dd704ff93e3f4ba56ca8b35b17c"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.20/gtunnel-linux-amd64-v0.3.20.tar.gz"
      sha256 "f7c65b2aeb0fc4e92adf98dc28ac06cd204bc90251f6570f74e7612d8f3c9e08"
    end
  end

  def install
    bin.install "gtunnel"
    generate_completions_from_executable(bin/"gtunnel", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtunnel --version")
  end
end
