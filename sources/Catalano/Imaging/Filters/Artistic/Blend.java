package Catalano.Imaging.Filters.Artistic;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Blend implements IApplyInPlace {
    private Algorithm a;
    private FastBitmap b;

    public enum Algorithm {
        Lighten,
        Darken,
        Multiply,
        Average,
        Add,
        Subtract,
        Difference,
        Negation,
        Screen,
        Exclusion,
        Overlay,
        SoftLight,
        HardLight,
        ColorDodge,
        ColorBurn,
        LinearLight,
        VividLight,
        PinLight,
        Reflect,
        Phoenix
    }

    public FastBitmap getOverlay() {
        return this.b;
    }

    public void setOverlay(FastBitmap fastBitmap) {
        this.b = fastBitmap;
    }

    public Algorithm getAlgorithm() {
        return this.a;
    }

    public void setAlgorithm(Algorithm algorithm) {
        this.a = algorithm;
    }

    public Blend(FastBitmap fastBitmap, Algorithm algorithm) {
        this.b = fastBitmap;
        this.a = algorithm;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int i = 0;
        if (fastBitmap.isRGB() && this.b.isRGB()) {
            int height = fastBitmap.getHeight() * fastBitmap.getWidth();
            switch (this.a) {
                case Lighten:
                    while (i < height) {
                        if (this.b.getRed(i) > fastBitmap.getRed(i)) {
                            fastBitmap.setRed(i, this.b.getRed(i));
                        }
                        if (this.b.getGreen(i) > fastBitmap.getGreen(i)) {
                            fastBitmap.setGreen(i, this.b.getGreen(i));
                        }
                        if (this.b.getBlue(i) > fastBitmap.getBlue(i)) {
                            fastBitmap.setBlue(i, this.b.getBlue(i));
                        }
                        i++;
                    }
                    return;
                case Darken:
                    while (i < height) {
                        if (this.b.getRed(i) < fastBitmap.getRed(i)) {
                            fastBitmap.setRed(i, this.b.getRed(i));
                        }
                        if (this.b.getGreen(i) < fastBitmap.getGreen(i)) {
                            fastBitmap.setGreen(i, this.b.getGreen(i));
                        }
                        if (this.b.getBlue(i) < fastBitmap.getBlue(i)) {
                            fastBitmap.setBlue(i, this.b.getBlue(i));
                        }
                        i++;
                    }
                    return;
                case Multiply:
                    while (i < height) {
                        fastBitmap.setRGB(i, (fastBitmap.getRed(i) * this.b.getRed(i)) / 255, (fastBitmap.getGreen(i) * this.b.getGreen(i)) / 255, (fastBitmap.getBlue(i) * this.b.getBlue(i)) / 255);
                        i++;
                    }
                    return;
                case Average:
                    while (i < height) {
                        fastBitmap.setRGB(i, (fastBitmap.getRed(i) * this.b.getRed(i)) / 2, (fastBitmap.getGreen(i) * this.b.getGreen(i)) / 2, (fastBitmap.getBlue(i) * this.b.getBlue(i)) / 2);
                        i++;
                    }
                    return;
                case Add:
                    while (i < height) {
                        fastBitmap.setRGB(i, Math.min(fastBitmap.getRed(i) + this.b.getRed(i), 255), Math.min(fastBitmap.getGreen(i) + this.b.getGreen(i), 255), Math.min(fastBitmap.getBlue(i) + this.b.getBlue(i), 255));
                        i++;
                    }
                    return;
                case Subtract:
                    for (int i2 = 0; i2 < height; i2++) {
                        int red = fastBitmap.getRed(i2) + this.b.getRed(i2);
                        if (red < 255) {
                            fastBitmap.setRed(i2, 0);
                        } else {
                            fastBitmap.setRed(i2, red - 255);
                        }
                        int green = fastBitmap.getGreen(i2) + this.b.getGreen(i2);
                        if (green < 255) {
                            fastBitmap.setGreen(i2, 0);
                        } else {
                            fastBitmap.setGreen(i2, green - 255);
                        }
                        int blue = fastBitmap.getBlue(i2) + this.b.getBlue(i2);
                        if (blue < 255) {
                            fastBitmap.setBlue(i2, 0);
                        } else {
                            fastBitmap.setBlue(i2, blue - 255);
                        }
                    }
                    return;
                case Difference:
                    while (i < height) {
                        fastBitmap.setRGB(i, Math.abs(fastBitmap.getRed(i) - this.b.getRed(i)), Math.abs(fastBitmap.getGreen(i) - this.b.getGreen(i)), Math.abs(fastBitmap.getBlue(i) - this.b.getBlue(i)));
                        i++;
                    }
                    return;
                case Negation:
                    while (i < height) {
                        fastBitmap.setRGB(i, 255 - Math.abs((255 - fastBitmap.getRed(i)) - this.b.getRed(i)), 255 - Math.abs((255 - fastBitmap.getGreen(i)) - this.b.getGreen(i)), 255 - Math.abs((255 - fastBitmap.getBlue(i)) - this.b.getBlue(i)));
                        i++;
                    }
                    return;
                case Screen:
                    while (i < height) {
                        fastBitmap.setRGB(i, 255 - (((255 - fastBitmap.getRed(i)) * (255 - this.b.getRed(i))) >> 8), 255 - (((255 - fastBitmap.getGreen(i)) * (255 - this.b.getGreen(i))) >> 8), 255 - (((255 - fastBitmap.getBlue(i)) * (255 - this.b.getBlue(i))) >> 8));
                        i++;
                    }
                    return;
                case Exclusion:
                    while (i < height) {
                        fastBitmap.setRGB(i, (fastBitmap.getRed(i) + this.b.getRed(i)) - (((fastBitmap.getRed(i) * 2) * this.b.getRed(i)) / 255), (fastBitmap.getGreen(i) + this.b.getGreen(i)) - (((fastBitmap.getGreen(i) * 2) * this.b.getGreen(i)) / 255), (fastBitmap.getBlue(i) + this.b.getBlue(i)) - (((fastBitmap.getBlue(i) * 2) * this.b.getBlue(i)) / 255));
                        i++;
                    }
                    return;
                case Overlay:
                    while (i < height) {
                        if (this.b.getRed(i) < 128) {
                            fastBitmap.setRed(i, Math.min(255, ((fastBitmap.getRed(i) * 2) * this.b.getRed(i)) / 255));
                        } else {
                            fastBitmap.setRed(i, Math.min(255, 255 - ((((255 - fastBitmap.getRed(i)) * 2) * (255 - this.b.getRed(i))) / 255)));
                        }
                        if (this.b.getGreen(i) < 128) {
                            fastBitmap.setGreen(i, Math.min(255, ((fastBitmap.getGreen(i) * 2) * this.b.getGreen(i)) / 255));
                        } else {
                            fastBitmap.setGreen(i, Math.min(255, 255 - ((((255 - fastBitmap.getGreen(i)) * 2) * (255 - this.b.getGreen(i))) / 255)));
                        }
                        if (this.b.getBlue(i) < 128) {
                            fastBitmap.setBlue(i, Math.min(255, ((fastBitmap.getBlue(i) * 2) * this.b.getBlue(i)) / 255));
                        } else {
                            fastBitmap.setBlue(i, Math.min(255, 255 - ((((255 - fastBitmap.getBlue(i)) * 2) * (255 - this.b.getBlue(i))) / 255)));
                        }
                        i++;
                    }
                    return;
                case SoftLight:
                    while (i < height) {
                        if (fastBitmap.getRed(i) < 128) {
                            fastBitmap.setRed(i, Math.min(255, ((this.b.getRed(i) * 2) * fastBitmap.getRed(i)) / 255));
                        } else {
                            this.b.setRed(i, Math.min(255, 255 - ((((255 - this.b.getRed(i)) * 2) * (255 - fastBitmap.getRed(i))) / 255)));
                        }
                        if (fastBitmap.getGreen(i) < 128) {
                            fastBitmap.setGreen(i, Math.min(255, ((this.b.getGreen(i) * 2) * fastBitmap.getGreen(i)) / 255));
                        } else {
                            fastBitmap.setGreen(i, Math.min(255, 255 - ((((255 - this.b.getGreen(i)) * 2) * (255 - fastBitmap.getGreen(i))) / 255)));
                        }
                        if (fastBitmap.getBlue(i) < 128) {
                            fastBitmap.setBlue(i, Math.min(255, ((this.b.getBlue(i) * 2) * fastBitmap.getBlue(i)) / 255));
                        } else {
                            fastBitmap.setBlue(i, Math.min(255, 255 - ((((255 - this.b.getBlue(i)) * 2) * (255 - fastBitmap.getBlue(i))) / 255)));
                        }
                        i++;
                    }
                    return;
                case HardLight:
                    while (i < height) {
                        if (this.b.getRed(i) < 128) {
                            fastBitmap.setRed(i, (int) (((fastBitmap.getRed(i) >> 1) + 64) * 2 * (this.b.getRed(i) / 255.0f)));
                        } else {
                            fastBitmap.setRed(i, (int) (255.0f - ((((255 - ((fastBitmap.getRed(i) >> 1) + 64)) * 2) * (255 - this.b.getRed(i))) / 255.0f)));
                        }
                        if (this.b.getGreen(i) < 128) {
                            fastBitmap.setGreen(i, (int) (((fastBitmap.getGreen(i) >> 1) + 64) * 2 * (this.b.getGreen(i) / 255.0f)));
                        } else {
                            fastBitmap.setGreen(i, (int) (255.0f - ((((255 - ((fastBitmap.getGreen(i) >> 1) + 64)) * 2) * (255 - this.b.getGreen(i))) / 255.0f)));
                        }
                        if (this.b.getBlue(i) < 128) {
                            fastBitmap.setBlue(i, (int) (((fastBitmap.getBlue(i) >> 1) + 64) * 2 * (this.b.getBlue(i) / 255.0f)));
                        } else {
                            fastBitmap.setBlue(i, (int) (255.0f - ((((255 - ((fastBitmap.getBlue(i) >> 1) + 64)) * 2) * (255 - this.b.getBlue(i))) / 255.0f)));
                        }
                        i++;
                    }
                    return;
                case ColorDodge:
                    while (i < height) {
                        if (this.b.getRed(i) == 255) {
                            fastBitmap.setRed(i, 255);
                        } else {
                            fastBitmap.setRed(i, Math.min(255, (fastBitmap.getRed(i) << 8) / (255 - this.b.getRed(i))));
                        }
                        if (this.b.getGreen(i) == 255) {
                            fastBitmap.setGreen(i, 255);
                        } else {
                            fastBitmap.setGreen(i, Math.min(255, (fastBitmap.getGreen(i) << 8) / (255 - this.b.getGreen(i))));
                        }
                        if (this.b.getBlue(i) == 255) {
                            fastBitmap.setBlue(i, 255);
                        } else {
                            fastBitmap.setBlue(i, Math.min(255, (fastBitmap.getBlue(i) << 8) / (255 - this.b.getBlue(i))));
                        }
                        i++;
                    }
                    return;
                case ColorBurn:
                    for (int i3 = 0; i3 < height; i3++) {
                        if (this.b.getRed(i3) == 0) {
                            fastBitmap.setRed(i3, this.b.getRed(i3));
                        } else {
                            fastBitmap.setRed(i3, Math.max(0, 255 - (((255 - fastBitmap.getRed(i3)) << 8) / this.b.getRed(i3))));
                        }
                        if (this.b.getGreen(i3) == 0) {
                            fastBitmap.setGreen(i3, this.b.getGreen(i3));
                        } else {
                            fastBitmap.setGreen(i3, Math.max(0, 255 - (((255 - fastBitmap.getGreen(i3)) << 8) / this.b.getGreen(i3))));
                        }
                        if (this.b.getBlue(i3) == 0) {
                            fastBitmap.setBlue(i3, this.b.getBlue(i3));
                        } else {
                            fastBitmap.setBlue(i3, Math.max(0, 255 - (((255 - fastBitmap.getBlue(i3)) << 8) / this.b.getBlue(i3))));
                        }
                    }
                    return;
                case LinearLight:
                    for (int i4 = 0; i4 < height; i4++) {
                        if (this.b.getRed(i4) < 128) {
                            int red2 = fastBitmap.getRed(i4) + (this.b.getRed(i4) * 2);
                            if (red2 < 255) {
                                fastBitmap.setRed(i4, 0);
                            } else {
                                fastBitmap.setRed(i4, red2 - 255);
                            }
                        } else {
                            fastBitmap.setRed(i4, Math.min(fastBitmap.getRed(i4) + ((this.b.getRed(i4) - 128) * 2), 255));
                        }
                        if (this.b.getGreen(i4) < 128) {
                            int green2 = fastBitmap.getGreen(i4) + (this.b.getGreen(i4) * 2);
                            if (green2 < 255) {
                                fastBitmap.setGreen(i4, 0);
                            } else {
                                fastBitmap.setGreen(i4, green2 - 255);
                            }
                        } else {
                            fastBitmap.setGreen(i4, Math.min(fastBitmap.getGreen(i4) + ((this.b.getGreen(i4) - 128) * 2), 255));
                        }
                        if (this.b.getBlue(i4) < 128) {
                            int blue2 = fastBitmap.getBlue(i4) + (this.b.getBlue(i4) * 2);
                            if (blue2 < 255) {
                                fastBitmap.setBlue(i4, 0);
                            } else {
                                fastBitmap.setBlue(i4, blue2 - 255);
                            }
                        } else {
                            fastBitmap.setBlue(i4, Math.min(fastBitmap.getBlue(i4) + ((this.b.getBlue(i4) - 128) * 2), 255));
                        }
                    }
                    return;
                case VividLight:
                    for (int i5 = 0; i5 < height; i5++) {
                        if (this.b.getRed(i5) < 128) {
                            int red3 = this.b.getRed(i5) * 2;
                            if (red3 == 0) {
                                fastBitmap.setRed(i5, red3);
                            } else {
                                fastBitmap.setRed(i5, Math.max(0, 255 - (((255 - fastBitmap.getRed(i5)) << 8) / red3)));
                            }
                        } else {
                            int red4 = (this.b.getRed(i5) - 128) * 2;
                            if (red4 == 255) {
                                fastBitmap.setRed(i5, 255);
                            } else {
                                fastBitmap.setRed(i5, Math.min(255, (fastBitmap.getRed(i5) << 8) / (255 - red4)));
                            }
                        }
                        if (this.b.getGreen(i5) < 128) {
                            int green3 = this.b.getGreen(i5) * 2;
                            if (green3 == 0) {
                                fastBitmap.setGreen(i5, green3);
                            } else {
                                fastBitmap.setGreen(i5, Math.max(0, 255 - (((255 - fastBitmap.getGreen(i5)) << 8) / green3)));
                            }
                        } else {
                            int green4 = (this.b.getGreen(i5) - 128) * 2;
                            if (green4 == 255) {
                                fastBitmap.setGreen(i5, 255);
                            } else {
                                fastBitmap.setGreen(i5, Math.min(255, (fastBitmap.getGreen(i5) << 8) / (255 - green4)));
                            }
                        }
                        if (this.b.getBlue(i5) < 128) {
                            int blue3 = this.b.getBlue(i5) * 2;
                            if (blue3 == 0) {
                                fastBitmap.setBlue(i5, blue3);
                            } else {
                                fastBitmap.setBlue(i5, Math.max(0, 255 - (((255 - fastBitmap.getBlue(i5)) << 8) / blue3)));
                            }
                        } else {
                            int blue4 = (this.b.getBlue(i5) - 128) * 2;
                            if (blue4 == 255) {
                                fastBitmap.setGreen(i5, 255);
                            } else {
                                fastBitmap.setBlue(i5, Math.min(255, (fastBitmap.getBlue(i5) << 8) / (255 - blue4)));
                            }
                        }
                    }
                    return;
                case PinLight:
                    while (i < height) {
                        int red5 = this.b.getRed(i) * 2;
                        if (this.b.getRed(i) < 128) {
                            if (red5 < fastBitmap.getRed(i)) {
                                fastBitmap.setRed(i, red5);
                            }
                        } else if (red5 > fastBitmap.getRed(i)) {
                            fastBitmap.setRed(i, red5);
                        }
                        int green5 = this.b.getGreen(i) * 2;
                        if (this.b.getGreen(i) < 128) {
                            if (green5 < fastBitmap.getGreen(i)) {
                                fastBitmap.setGreen(i, green5);
                            }
                        } else if (green5 > fastBitmap.getGreen(i)) {
                            fastBitmap.setGreen(i, green5);
                        }
                        int blue5 = this.b.getBlue(i) * 2;
                        if (this.b.getBlue(i) < 128) {
                            if (blue5 < fastBitmap.getBlue(i)) {
                                fastBitmap.setBlue(i, blue5);
                            }
                        } else if (blue5 > fastBitmap.getBlue(i)) {
                            fastBitmap.setBlue(i, blue5);
                        }
                        i++;
                    }
                    return;
                case Reflect:
                    while (i < height) {
                        if (this.b.getRed(i) == 255) {
                            fastBitmap.setRed(i, 255);
                        } else {
                            fastBitmap.setRed(i, Math.min(255, (fastBitmap.getRed(i) * fastBitmap.getRed(i)) / (255 - this.b.getRed(i))));
                        }
                        if (this.b.getGreen(i) == 255) {
                            fastBitmap.setGreen(i, 255);
                        } else {
                            fastBitmap.setGreen(i, Math.min(255, (fastBitmap.getGreen(i) * fastBitmap.getGreen(i)) / (255 - this.b.getGreen(i))));
                        }
                        if (this.b.getBlue(i) == 255) {
                            fastBitmap.setBlue(i, 255);
                        } else {
                            fastBitmap.setBlue(i, Math.min(255, (fastBitmap.getBlue(i) * fastBitmap.getBlue(i)) / (255 - this.b.getBlue(i))));
                        }
                        i++;
                    }
                    return;
                case Phoenix:
                    while (i < height) {
                        fastBitmap.setRGB(i, (Math.min(fastBitmap.getRed(i), this.b.getRed(i)) - Math.max(fastBitmap.getRed(i), this.b.getRed(i))) + 255, (Math.min(fastBitmap.getGreen(i), this.b.getGreen(i)) - Math.max(fastBitmap.getGreen(i), this.b.getGreen(i))) + 255, (Math.min(fastBitmap.getBlue(i), this.b.getBlue(i)) - Math.max(fastBitmap.getBlue(i), this.b.getBlue(i))) + 255);
                        i++;
                    }
                    return;
                default:
                    return;
            }
        }
        throw new IllegalArgumentException("Blend only works in RGB images.");
    }
}
