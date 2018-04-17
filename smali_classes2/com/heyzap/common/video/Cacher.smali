.class public Lcom/heyzap/common/video/Cacher;
.super Lcom/heyzap/http/FileAsyncHttpResponseHandler;
.source "Cacher.java"


# instance fields
.field private createdCacheEntry:Lcom/heyzap/common/cache/Entry;

.field private firedFinished:Z

.field private listener:Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;

.field private model:Lcom/heyzap/common/video/VideoModelInterface;

.field private percentDownloaded:I


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/heyzap/common/video/VideoModelInterface;Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcom/heyzap/http/FileAsyncHttpResponseHandler;-><init>(Ljava/io/File;)V

    .line 23
    iput-boolean v1, p0, Lcom/heyzap/common/video/Cacher;->firedFinished:Z

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/common/video/Cacher;->createdCacheEntry:Lcom/heyzap/common/cache/Entry;

    .line 25
    iput v1, p0, Lcom/heyzap/common/video/Cacher;->percentDownloaded:I

    .line 31
    iput-object p2, p0, Lcom/heyzap/common/video/Cacher;->model:Lcom/heyzap/common/video/VideoModelInterface;

    .line 32
    iput-object p3, p0, Lcom/heyzap/common/video/Cacher;->listener:Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;

    .line 33
    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/heyzap/common/video/VideoModelInterface;Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    invoke-static {p0}, Lcom/heyzap/internal/Utils;->createCacheDir(Landroid/content/Context;)V

    .line 37
    invoke-interface {p1}, Lcom/heyzap/common/video/VideoModelInterface;->getStaticUri()Landroid/net/Uri;

    move-result-object v1

    .line 38
    invoke-interface {p1}, Lcom/heyzap/common/video/VideoModelInterface;->getStreamingUri()Landroid/net/Uri;

    move-result-object v0

    .line 40
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 49
    :goto_0
    const-string v1, "video-%s.mp4"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/heyzap/common/video/VideoModelInterface;->getCreativeUniqueIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 50
    new-instance v2, Ljava/io/File;

    invoke-static {p0, v1}, Lcom/heyzap/internal/Utils;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/heyzap/house/Manager;->getInstance()Lcom/heyzap/house/Manager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/heyzap/house/Manager;->getFileCache()Lcom/heyzap/common/cache/FileCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/heyzap/common/cache/FileCache;->get(Ljava/lang/String;)Lcom/heyzap/common/cache/Entry;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 56
    invoke-virtual {v1}, Lcom/heyzap/common/cache/Entry;->setLastUsed()V

    .line 58
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/heyzap/common/video/VideoModelInterface;->setIsReady(Ljava/lang/Boolean;)V

    .line 59
    invoke-interface {p1, v1}, Lcom/heyzap/common/video/VideoModelInterface;->setCacheEntry(Lcom/heyzap/common/cache/Entry;)V

    .line 60
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/heyzap/common/video/VideoModelInterface;->setPercentDownloaded(Ljava/lang/Integer;)V

    .line 62
    const-string v0, "(VIDEO PRE-CACHED) %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-interface {p2, p1, v6}, Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;->onComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 87
    :cond_0
    :goto_1
    return-void

    .line 42
    :cond_1
    if-nez v1, :cond_4

    .line 43
    const-string v0, "Cacher.start null uri!"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "No video to download."

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 45
    if-eqz p2, :cond_0

    invoke-interface {p2, v6, v0}, Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;->onComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 70
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_3

    .line 83
    :cond_3
    new-instance v1, Lcom/heyzap/common/video/Cacher;

    invoke-direct {v1, v2, p1, p2}, Lcom/heyzap/common/video/Cacher;-><init>(Ljava/io/File;Lcom/heyzap/common/video/VideoModelInterface;Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;)V

    .line 84
    invoke-virtual {v1, v4}, Lcom/heyzap/common/video/Cacher;->setUseSynchronousMode(Z)V

    .line 86
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/heyzap/common/net/FileFetchClient;->fetch(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/FileAsyncHttpResponseHandler;)Lcom/heyzap/http/RequestHandle;

    goto :goto_1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const-string v1, "Cache.start IOException"

    invoke-static {v1}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 75
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 76
    if-eqz p2, :cond_0

    .line 77
    const-string v1, "Cache.start IOException listener is null"

    invoke-static {v1}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 78
    invoke-interface {p2, v6, v0}, Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;->onComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .prologue
    .line 170
    const-string v0, "(DOWNLOAD CANCELLED) %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/heyzap/common/video/Cacher;->model:Lcom/heyzap/common/video/VideoModelInterface;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "cancelled"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/heyzap/common/video/Cacher;->listener:Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/heyzap/common/video/Cacher;->listener:Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;

    iget-object v2, p0, Lcom/heyzap/common/video/Cacher;->model:Lcom/heyzap/common/video/VideoModelInterface;

    invoke-interface {v1, v2, v0}, Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;->onComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 174
    :cond_0
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 4

    .prologue
    .line 108
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No space left on device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "Dumping caches."

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 111
    :try_start_0
    invoke-static {}, Lcom/heyzap/house/Manager;->getInstance()Lcom/heyzap/house/Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/Manager;->clearAndCreateFileCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    .line 122
    :cond_1
    const-string v0, "(DOWNLOAD ERROR) Error: %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/heyzap/common/video/Cacher;->model:Lcom/heyzap/common/video/VideoModelInterface;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/heyzap/common/video/Cacher;->listener:Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heyzap/common/video/Cacher;->listener:Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p3}, Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;->onComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 125
    :cond_2
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 114
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onProgress(II)V
    .locals 4

    .prologue
    .line 91
    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p2

    iput v0, p0, Lcom/heyzap/common/video/Cacher;->percentDownloaded:I

    .line 92
    iget-object v0, p0, Lcom/heyzap/common/video/Cacher;->model:Lcom/heyzap/common/video/VideoModelInterface;

    invoke-interface {v0, p1}, Lcom/heyzap/common/video/VideoModelInterface;->setSize(I)V

    .line 93
    iget-object v0, p0, Lcom/heyzap/common/video/Cacher;->model:Lcom/heyzap/common/video/VideoModelInterface;

    iget v1, p0, Lcom/heyzap/common/video/Cacher;->percentDownloaded:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/heyzap/common/video/VideoModelInterface;->setPercentDownloaded(Ljava/lang/Integer;)V

    .line 94
    iget-object v0, p0, Lcom/heyzap/common/video/Cacher;->model:Lcom/heyzap/common/video/VideoModelInterface;

    invoke-interface {v0}, Lcom/heyzap/common/video/VideoModelInterface;->getVideoDisplayOptions()Lcom/heyzap/common/video/VideoDisplayOptions;

    move-result-object v0

    iget-wide v0, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->requiredDownloadPercent:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/common/video/Cacher;->model:Lcom/heyzap/common/video/VideoModelInterface;

    invoke-interface {v0}, Lcom/heyzap/common/video/VideoModelInterface;->getVideoDisplayOptions()Lcom/heyzap/common/video/VideoDisplayOptions;

    move-result-object v0

    iget-wide v0, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->requiredDownloadPercent:D

    iget v2, p0, Lcom/heyzap/common/video/Cacher;->percentDownloaded:I

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/heyzap/common/video/Cacher;->model:Lcom/heyzap/common/video/VideoModelInterface;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/heyzap/common/video/VideoModelInterface;->setIsReady(Ljava/lang/Boolean;)V

    .line 96
    const/16 v0, 0xc8

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/http/Header;

    invoke-virtual {p0}, Lcom/heyzap/common/video/Cacher;->getTargetFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/heyzap/common/video/Cacher;->onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V

    .line 98
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 102
    const-string v0, "(DOWNLOADING) %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/heyzap/common/video/Cacher;->model:Lcom/heyzap/common/video/VideoModelInterface;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 129
    iget-boolean v0, p0, Lcom/heyzap/common/video/Cacher;->firedFinished:Z

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iput-boolean v3, p0, Lcom/heyzap/common/video/Cacher;->firedFinished:Z

    .line 134
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Downloaded video does not exist on filesystem."

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/heyzap/common/video/Cacher;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V

    goto :goto_0

    .line 141
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/common/video/Cacher;->createdCacheEntry:Lcom/heyzap/common/cache/Entry;

    if-nez v0, :cond_3

    .line 142
    new-instance v0, Lcom/heyzap/common/cache/Entry;

    invoke-direct {v0}, Lcom/heyzap/common/cache/Entry;-><init>()V

    iput-object v0, p0, Lcom/heyzap/common/video/Cacher;->createdCacheEntry:Lcom/heyzap/common/cache/Entry;

    .line 143
    iget-object v0, p0, Lcom/heyzap/common/video/Cacher;->createdCacheEntry:Lcom/heyzap/common/cache/Entry;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/cache/Entry;->setFilename(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/heyzap/common/video/Cacher;->createdCacheEntry:Lcom/heyzap/common/cache/Entry;

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/cache/Entry;->setIdentifier(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/heyzap/house/Manager;->getInstance()Lcom/heyzap/house/Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/Manager;->getFileCache()Lcom/heyzap/common/cache/FileCache;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/video/Cacher;->createdCacheEntry:Lcom/heyzap/common/cache/Entry;

    invoke-virtual {v0, v1}, Lcom/heyzap/common/cache/FileCache;->put(Lcom/heyzap/common/cache/Entry;)V

    .line 148
    :cond_3
    iget v0, p0, Lcom/heyzap/common/video/Cacher;->percentDownloaded:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_4

    .line 149
    iget-object v0, p0, Lcom/heyzap/common/video/Cacher;->createdCacheEntry:Lcom/heyzap/common/cache/Entry;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/cache/Entry;->setDirty(Ljava/lang/Boolean;)V

    .line 154
    :goto_1
    invoke-static {}, Lcom/heyzap/house/Manager;->getInstance()Lcom/heyzap/house/Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/Manager;->getFileCache()Lcom/heyzap/common/cache/FileCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/common/cache/FileCache;->sync()Lcom/heyzap/common/concurrency/SettableFuture;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    const-string v0, "(CACHED) %s"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/heyzap/common/video/Cacher;->model:Lcom/heyzap/common/video/VideoModelInterface;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/heyzap/common/video/Cacher;->model:Lcom/heyzap/common/video/VideoModelInterface;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/heyzap/common/video/VideoModelInterface;->setIsReady(Ljava/lang/Boolean;)V

    .line 163
    iget-object v0, p0, Lcom/heyzap/common/video/Cacher;->model:Lcom/heyzap/common/video/VideoModelInterface;

    iget-object v1, p0, Lcom/heyzap/common/video/Cacher;->createdCacheEntry:Lcom/heyzap/common/cache/Entry;

    invoke-interface {v0, v1}, Lcom/heyzap/common/video/VideoModelInterface;->setCacheEntry(Lcom/heyzap/common/cache/Entry;)V

    .line 165
    iget-object v0, p0, Lcom/heyzap/common/video/Cacher;->listener:Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/common/video/Cacher;->listener:Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;

    iget-object v1, p0, Lcom/heyzap/common/video/Cacher;->model:Lcom/heyzap/common/video/VideoModelInterface;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;->onComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 151
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/heyzap/common/video/Cacher;->createdCacheEntry:Lcom/heyzap/common/cache/Entry;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/cache/Entry;->setDirty(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 157
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/heyzap/common/video/Cacher;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V

    goto/16 :goto_0
.end method
