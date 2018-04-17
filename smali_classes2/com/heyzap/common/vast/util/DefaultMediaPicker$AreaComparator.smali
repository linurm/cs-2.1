.class Lcom/heyzap/common/vast/util/DefaultMediaPicker$AreaComparator;
.super Ljava/lang/Object;
.source "DefaultMediaPicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/common/vast/util/DefaultMediaPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AreaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/heyzap/common/vast/model/VASTMediaFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/common/vast/util/DefaultMediaPicker;


# direct methods
.method private constructor <init>(Lcom/heyzap/common/vast/util/DefaultMediaPicker;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/heyzap/common/vast/util/DefaultMediaPicker$AreaComparator;->this$0:Lcom/heyzap/common/vast/util/DefaultMediaPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/common/vast/util/DefaultMediaPicker;Lcom/heyzap/common/vast/util/DefaultMediaPicker$1;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/heyzap/common/vast/util/DefaultMediaPicker$AreaComparator;-><init>(Lcom/heyzap/common/vast/util/DefaultMediaPicker;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/heyzap/common/vast/model/VASTMediaFile;Lcom/heyzap/common/vast/model/VASTMediaFile;)I
    .locals 5

    .prologue
    .line 149
    invoke-virtual {p1}, Lcom/heyzap/common/vast/model/VASTMediaFile;->getWidth()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/heyzap/common/vast/model/VASTMediaFile;->getHeight()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    mul-int/2addr v0, v1

    .line 151
    invoke-virtual {p2}, Lcom/heyzap/common/vast/model/VASTMediaFile;->getWidth()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-virtual {p2}, Lcom/heyzap/common/vast/model/VASTMediaFile;->getHeight()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    mul-int/2addr v1, v2

    .line 156
    iget-object v2, p0, Lcom/heyzap/common/vast/util/DefaultMediaPicker$AreaComparator;->this$0:Lcom/heyzap/common/vast/util/DefaultMediaPicker;

    invoke-static {v2}, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->access$100(Lcom/heyzap/common/vast/util/DefaultMediaPicker;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 157
    iget-object v2, p0, Lcom/heyzap/common/vast/util/DefaultMediaPicker$AreaComparator;->this$0:Lcom/heyzap/common/vast/util/DefaultMediaPicker;

    invoke-static {v2}, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->access$100(Lcom/heyzap/common/vast/util/DefaultMediaPicker;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 158
    const-string v2, "DefaultMediaPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AreaComparator: obj1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " obj2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/heyzap/common/vast/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    if-ge v0, v1, :cond_0

    .line 162
    const/4 v0, -0x1

    .line 166
    :goto_0
    return v0

    .line 163
    :cond_0
    if-le v0, v1, :cond_1

    .line 164
    const/4 v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 144
    check-cast p1, Lcom/heyzap/common/vast/model/VASTMediaFile;

    check-cast p2, Lcom/heyzap/common/vast/model/VASTMediaFile;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/common/vast/util/DefaultMediaPicker$AreaComparator;->compare(Lcom/heyzap/common/vast/model/VASTMediaFile;Lcom/heyzap/common/vast/model/VASTMediaFile;)I

    move-result v0

    return v0
.end method
