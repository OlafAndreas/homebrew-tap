class Xcflow < Formula
  desc "Xcode Cloud workflows as JSON files in your repo"
  homepage "https://github.com/OlafAndreas/xcflow"
  url "https://github.com/OlafAndreas/xcflow/releases/download/v0.2.12/xcflow-0.2.12.tar.gz"
  sha256 "20abe4bac48a2e6c88255dd50597313e81f2a7850d97e1174a00b981ecffcfc9"
  license "MIT"

  depends_on macos: :sonoma

  def install
    bin.install "xcflow"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcflow --version").strip
  end
end
