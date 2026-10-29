class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.40/gtunnel-macos-arm64-v0.2.40.tar.gz"
      sha256 "9b65db24e014c3e3ec6a6595260e4b9056b69fb16f2157a5f4131709893386fb"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.40/gtunnel-macos-intel-v0.2.40.tar.gz"
      sha256 "21a9c291a4f565edf094ee7e3448b3199a113f77b35518876c35a598734c4b2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.40/gtunnel-linux-arm64-v0.2.40.tar.gz"
      sha256 "77e2c51ffdf1be1840e935417a0df337d60896cc4502433e111555138d163c16"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.40/gtunnel-linux-amd64-v0.2.40.tar.gz"
      sha256 "9d4eb941198070c44ce6cd47727cb2ac57905cd7a61151a176e2894d7ff23d2c"
    end
  end

  def install
    bin.install "gtunnel"
    generate_completions_from_executable(bin/"gtunnel", "completions")
  end

  def caveats
    <<~EOS
      gtunnel drives gcloud and needs a logged-in Google Cloud CLI:
        gcloud auth login
      Prerequisites and IAM: https://github.com/gcheliz/gtunnel/blob/main/docs/usage.md#getting-set-up
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtunnel --version")
  end
end
