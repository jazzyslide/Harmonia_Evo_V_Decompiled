.class public Lcom/scalado/caps/screen2/TextureCache;
.super Lcom/scalado/caps/PeerBase;
.source "TextureCache.java"


# direct methods
.method public constructor <init>(ILcom/scalado/caps/renderers/Render2D;)V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/screen2/TextureCache;->nativeCreateCapsCache(ILcom/scalado/caps/renderers/Render2D;)I

    return-void
.end method

.method public static getMinimumCacheSize(Lcom/scalado/base/Size;Lcom/scalado/base/Size;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/scalado/caps/screen2/TextureCache;->nativeGetMinimumCacheSize(Lcom/scalado/base/Size;Lcom/scalado/base/Size;)I

    move-result v0

    return v0
.end method

.method private native nativeCreateCapsCache(ILcom/scalado/caps/renderers/Render2D;)I
.end method

.method private static native nativeGetMinimumCacheSize(Lcom/scalado/base/Size;Lcom/scalado/base/Size;)I
.end method

.method private native nativeReleaseTextures()I
.end method


# virtual methods
.method public releaseTextures()I
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/screen2/TextureCache;->nativeReleaseTextures()I

    move-result v0

    return v0
.end method
