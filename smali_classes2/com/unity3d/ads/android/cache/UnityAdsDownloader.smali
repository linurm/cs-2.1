.class public Lcom/unity3d/ads/android/cache/UnityAdsDownloader;
.super Ljava/lang/Object;
.source "UnityAdsDownloader.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static a:Ljava/util/ArrayList;

.field private static b:Ljava/util/ArrayList;

.field private static c:Z

.field private static d:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    sput-object v1, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a:Ljava/util/ArrayList;

    .line 27
    sput-object v1, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->b:Ljava/util/ArrayList;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->c:Z

    .line 30
    sput-object v1, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->d:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->c(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->b()V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/ads/android/cache/b;)V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->d:Ljava/util/Vector;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->d:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/unity3d/ads/android/cache/c;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 25
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/cache/IUnityAdsDownloadListener;

    sget-object v2, Lcom/unity3d/ads/android/cache/a;->a:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/android/cache/c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v0, p1}, Lcom/unity3d/ads/android/cache/IUnityAdsDownloadListener;->onFileDownloadCompleted(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-interface {v0, p1}, Lcom/unity3d/ads/android/cache/IUnityAdsDownloadListener;->onFileDownloadCancelled(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V
    .locals 0

    .prologue
    .line 25
    invoke-static {p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->b(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    return-void
.end method

.method public static addDownload(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a:Ljava/util/ArrayList;

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_1
    sget-boolean v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->c:Z

    if-nez v0, :cond_2

    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->c:Z

    .line 41
    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->b()V

    .line 43
    :cond_2
    return-void
.end method

.method public static addListener(Lcom/unity3d/ads/android/cache/IUnityAdsDownloadListener;)V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->b:Ljava/util/ArrayList;

    .line 47
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_1
    return-void
.end method

.method private static b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 144
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 145
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting download for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Lcom/unity3d/ads/android/cache/b;

    invoke-direct {v1, v0}, Lcom/unity3d/ads/android/cache/b;-><init>(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    sget-object v2, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->d:Ljava/util/Vector;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    sput-object v2, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->d:Ljava/util/Vector;

    :cond_0
    sget-object v2, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->d:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/unity3d/ads/android/cache/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 151
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    invoke-static {v0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->b(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    goto :goto_0

    .line 147
    :cond_3
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 148
    sput-boolean v3, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->c:Z

    .line 149
    const-string v0, "All downloads completed."

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V
    .locals 3

    .prologue
    .line 85
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const/4 v2, -0x1

    .line 89
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 90
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    :goto_2
    if-ltz v1, :cond_0

    .line 97
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 101
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 102
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 103
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    const/4 v0, 0x1

    .line 110
    :goto_1
    return v0

    .line 105
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 106
    :cond_2
    sget-object v2, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->createCacheDir()Ljava/io/File;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-object v0

    .line 162
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Problems creating FOS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static clearData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->d:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 70
    sput-object v1, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->d:Ljava/util/Vector;

    .line 73
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->c:Z

    .line 75
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 76
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    sput-object v1, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->b:Ljava/util/ArrayList;

    .line 79
    :cond_1
    return-void
.end method

.method public static removeListener(Lcom/unity3d/ads/android/cache/IUnityAdsDownloadListener;)V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static stopAllDownloads()V
    .locals 3

    .prologue
    .line 59
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 60
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->d:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/cache/b;

    .line 62
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/unity3d/ads/android/cache/b;->cancel(Z)Z

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method
