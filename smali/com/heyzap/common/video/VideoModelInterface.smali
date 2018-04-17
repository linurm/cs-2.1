.class public interface abstract Lcom/heyzap/common/video/VideoModelInterface;
.super Ljava/lang/Object;
.source "VideoModelInterface.java"


# virtual methods
.method public abstract getCacheEntry()Lcom/heyzap/common/cache/Entry;
.end method

.method public abstract getCreativeUniqueIdentifier()Ljava/lang/String;
.end method

.method public abstract getStaticUri()Landroid/net/Uri;
.end method

.method public abstract getStreamingUri()Landroid/net/Uri;
.end method

.method public abstract getVideoDisplayOptions()Lcom/heyzap/common/video/VideoDisplayOptions;
.end method

.method public abstract isFileCached()Ljava/lang/Boolean;
.end method

.method public abstract isReady()Ljava/lang/Boolean;
.end method

.method public abstract setAdUnit(Lcom/heyzap/internal/Constants$AdUnit;)V
.end method

.method public abstract setCacheEntry(Lcom/heyzap/common/cache/Entry;)V
.end method

.method public abstract setIsReady(Ljava/lang/Boolean;)V
.end method

.method public abstract setPercentDownloaded(Ljava/lang/Integer;)V
.end method

.method public abstract setSize(I)V
.end method
