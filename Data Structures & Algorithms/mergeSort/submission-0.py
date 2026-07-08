class Solution:
    def mergeSort(self, pairs: List[Pair]) -> List[Pair]:
        return self.merge_helper(pairs, 0, len(pairs) - 1)

    def merge_helper(self, pairs, start, end):
        if end - start + 1 <= 1:
            return pairs

        middle = (start + end) // 2

        self.merge_helper(pairs, start, middle)
        self.merge_helper(pairs, middle + 1, end)

        self.merge(pairs, start, middle, end)

        return pairs

    def merge(self, pairs, start, middle, end):
        L = pairs[start:middle + 1]
        R = pairs[middle + 1:end + 1]

        i = 0
        j = 0
        k = start

        while i < len(L) and j < len(R):
            if L[i].key <= R[j].key:
                pairs[k] = L[i]
                i += 1
            else:
                pairs[k] = R[j]
                j += 1
            k += 1

        while i < len(L):
            pairs[k] = L[i]
            i += 1
            k += 1

        while j < len(R):
            pairs[k] = R[j]
            j += 1
            k += 1

        return pairs