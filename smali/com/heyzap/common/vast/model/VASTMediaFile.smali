.class public Lcom/heyzap/common/vast/model/VASTMediaFile;
.super Ljava/lang/Object;
.source "VASTMediaFile.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x9d2cd865f40cdaeL


# instance fields
.field private apiFramework:Ljava/lang/String;

.field private bitrate:Ljava/math/BigInteger;

.field private delivery:Ljava/lang/String;

.field private height:Ljava/math/BigInteger;

.field private id:Ljava/lang/String;

.field private maintainAspectRatio:Ljava/lang/Boolean;

.field private scalable:Ljava/lang/Boolean;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;

.field private width:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiFramework()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->apiFramework:Ljava/lang/String;

    return-object v0
.end method

.method public getBitrate()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->bitrate:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getDelivery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->delivery:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->height:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->width:Ljava/math/BigInteger;

    return-object v0
.end method

.method public isMaintainAspectRatio()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->maintainAspectRatio:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isScalable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->scalable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setApiFramework(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->apiFramework:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setBitrate(Ljava/math/BigInteger;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->bitrate:Ljava/math/BigInteger;

    .line 65
    return-void
.end method

.method public setDelivery(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->delivery:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setHeight(Ljava/math/BigInteger;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->height:Ljava/math/BigInteger;

    .line 81
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->id:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setMaintainAspectRatio(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->maintainAspectRatio:Ljava/lang/Boolean;

    .line 97
    return-void
.end method

.method public setScalable(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->scalable:Ljava/lang/Boolean;

    .line 89
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->type:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->value:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setWidth(Ljava/math/BigInteger;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->width:Ljava/math/BigInteger;

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaFile [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delivery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->delivery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->bitrate:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->width:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->height:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scalable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->scalable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maintainAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->maintainAspectRatio:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apiFramework="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/vast/model/VASTMediaFile;->apiFramework:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
