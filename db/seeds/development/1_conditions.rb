[
  {
    name: 'Pessoas com comorbidade maiores de 18 anos',
    start_at: Date.parse('2020-01-01'),
    end_at: 1.year.from_now,
    min_age: 18,
    can_register: true,
    can_schedule: false,
    ubs_ids: Ubs.all.pluck(:id)
  },
  {
    name: 'Trabalhadores da Educação maiores de 18 anos',
    start_at: Date.parse('2020-01-01'),
    end_at: 1.year.from_now,
    min_age: 18,
    can_register: true,
    can_schedule: false,
    ubs_ids: Ubs.all.pluck(:id)
  },
  {
    name: 'Trabalhadores da Saúde maiores de 18 anos',
    start_at: Date.parse('2020-01-01'),
    end_at: 1.year.from_now,
    min_age: 18,
    can_register: true,
    can_schedule: false,
    ubs_ids: Ubs.all.pluck(:id)
  },
  {
    name: 'População em geral com 60 anos ou mais',
    start_at: Date.parse('2020-01-01'),
    end_at: 1.year.from_now,
    min_age: 60,
    can_register: true,
    can_schedule: true,
    ubs_ids: Ubs.all.pluck(:id)
  }
].each do |h|
  Condition.find_or_initialize_by(name: h[:name]).tap do |condition|
    condition.attributes = h
    condition.save!
  end
end