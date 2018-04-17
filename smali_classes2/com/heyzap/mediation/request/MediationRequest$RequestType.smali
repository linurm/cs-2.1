.class public Lcom/heyzap/mediation/request/MediationRequest$RequestType;
.super Ljava/lang/Object;
.source "MediationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/request/MediationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestType"
.end annotation


# instance fields
.field public final adUnit:Lcom/heyzap/internal/Constants$AdUnit;

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    .line 192
    iput-object p2, p0, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->tag:Ljava/lang/String;

    .line 193
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 205
    if-ne p0, p1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v0

    .line 206
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 208
    :cond_3
    check-cast p1, Lcom/heyzap/mediation/request/MediationRequest$RequestType;

    .line 210
    iget-object v2, p0, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    iget-object v3, p1, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 211
    :cond_4
    iget-object v2, p0, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->tag:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->tag:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->tag:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/heyzap/internal/Constants;->DEFAULT_TAG:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->tag:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0}, Lcom/heyzap/internal/Constants$AdUnit;->hashCode()I

    move-result v0

    .line 219
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->tag:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->tag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 220
    return v0

    :cond_1
    move v0, v1

    .line 218
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 187
    const-string v0, "RequestType<adUnit: %s,tag: %s>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->tag:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
