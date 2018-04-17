.class public Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;
.super Ljava/lang/Object;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/ads/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FetchResponse"
.end annotation


# instance fields
.field private ads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/sdk/ads/NativeAd$Ad;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/sdk/ads/NativeAd$Ad;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;->ads:Ljava/util/List;

    .line 129
    sget-object v0, Lcom/heyzap/house/model/AdModel;->DEFAULT_TAG_NAME:Ljava/lang/String;

    iput-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;->tag:Ljava/lang/String;

    .line 132
    if-eqz p2, :cond_0

    .line 133
    sget-object v0, Lcom/heyzap/house/model/AdModel;->DEFAULT_TAG_NAME:Ljava/lang/String;

    .line 136
    :cond_0
    if-eqz p1, :cond_1

    .line 137
    iput-object p1, p0, Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;->ads:Ljava/util/List;

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;->ads:Ljava/util/List;

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/heyzap/sdk/ads/NativeAd$1;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doImpressionOnAll()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;->ads:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;->ads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/ads/NativeAd$Ad;

    .line 152
    invoke-static {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->access$300(Lcom/heyzap/sdk/ads/NativeAd$Ad;)Lcom/heyzap/house/model/NativeModel;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_0
    sget-object v0, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/heyzap/house/model/AdModel;->onManyImpressions(Landroid/content/Context;Ljava/util/List;)V

    .line 157
    :cond_1
    return-void
.end method

.method public getAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/sdk/ads/NativeAd$Ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;->ads:Ljava/util/List;

    return-object v0
.end method

.method public getCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;->ads:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;->ads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;->tag:Ljava/lang/String;

    return-object v0
.end method
