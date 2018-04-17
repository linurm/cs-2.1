.class public Lcom/heyzap/mediation/display/DisplayConfig;
.super Ljava/lang/Object;
.source "DisplayConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/mediation/display/DisplayConfig$Network;
    }
.end annotation


# static fields
.field private static defaultDisplayTtl:I

.field private static defaultInterstitialVideoInterval:I


# instance fields
.field public displayTtl:I

.field public id:Ljava/lang/String;

.field public interstitialVideoEnabled:Z

.field public interstitialVideoInterval:I

.field public networks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/mediation/display/DisplayConfig$Network;",
            ">;"
        }
    .end annotation
.end field

.field public sortNetworksOnScore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x7530

    sput v0, Lcom/heyzap/mediation/display/DisplayConfig;->defaultInterstitialVideoInterval:I

    .line 20
    const/16 v0, 0x5dc

    sput v0, Lcom/heyzap/mediation/display/DisplayConfig;->defaultDisplayTtl:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/display/DisplayConfig;->networks:Ljava/util/List;

    .line 23
    sget v0, Lcom/heyzap/mediation/display/DisplayConfig;->defaultInterstitialVideoInterval:I

    iput v0, p0, Lcom/heyzap/mediation/display/DisplayConfig;->interstitialVideoInterval:I

    .line 24
    iput-boolean v6, p0, Lcom/heyzap/mediation/display/DisplayConfig;->interstitialVideoEnabled:Z

    .line 25
    sget v0, Lcom/heyzap/mediation/display/DisplayConfig;->defaultDisplayTtl:I

    iput v0, p0, Lcom/heyzap/mediation/display/DisplayConfig;->displayTtl:I

    .line 26
    iput-boolean v1, p0, Lcom/heyzap/mediation/display/DisplayConfig;->sortNetworksOnScore:Z

    .line 29
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/mediation/display/DisplayConfig;->id:Ljava/lang/String;

    .line 30
    const-string v0, "interstitial_video_interval"

    sget v2, Lcom/heyzap/mediation/display/DisplayConfig;->defaultInterstitialVideoInterval:I

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/heyzap/mediation/display/DisplayConfig;->interstitialVideoInterval:I

    .line 31
    const-string v0, "interstitial_video_enabled"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heyzap/mediation/display/DisplayConfig;->interstitialVideoEnabled:Z

    .line 32
    const-string v0, "display_ttl"

    iget v2, p0, Lcom/heyzap/mediation/display/DisplayConfig;->displayTtl:I

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/heyzap/mediation/display/DisplayConfig;->displayTtl:I

    .line 33
    const-string v0, "sort"

    iget-boolean v2, p0, Lcom/heyzap/mediation/display/DisplayConfig;->sortNetworksOnScore:Z

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heyzap/mediation/display/DisplayConfig;->sortNetworksOnScore:Z

    .line 35
    const-string v0, "networks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    .line 36
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 37
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 39
    :try_start_0
    iget-object v4, p0, Lcom/heyzap/mediation/display/DisplayConfig;->networks:Ljava/util/List;

    new-instance v5, Lcom/heyzap/mediation/display/DisplayConfig$Network;

    invoke-direct {v5, v3}, Lcom/heyzap/mediation/display/DisplayConfig$Network;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :catch_0
    move-exception v4

    .line 41
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "failed to load network json: "

    aput-object v5, v4, v1

    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/heyzap/internal/Logger;->log([Ljava/lang/Object;)V

    goto :goto_1

    .line 45
    :cond_0
    return-void
.end method
