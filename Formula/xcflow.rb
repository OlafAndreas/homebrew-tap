class Xcflow < Formula
  desc "Xcode Cloud workflows as JSON files in your repo"
  homepage "https://github.com/OlafAndreas/xcflow"
  url "https://github.com/OlafAndreas/xcflow/releases/download/v0.1.1/xcflow-0.1.1.tar.gz"
  sha256 "1a433b7edc1aee5a53e3ad169eb9caa9fedb32fa227ed935ebad2b1d3e29a723"
  license "MIT"

  depends_on macos: :sonoma

  def install
    bin.install "xcflow"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcflow --version").strip
  end
end
